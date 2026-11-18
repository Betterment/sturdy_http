import 'dart:async';
import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:uuid/uuid.dart';

part 'deserializer.dart';

/// A nicety to represent a [Map] as json while making network requests
typedef Json = Map<String, dynamic>;

/// {@template http_client}
/// A client that facilitates network interactions. This client offers the following benefits:
///
/// - Type-safe responses: Allowing the consumer to provide parsing functions, the client is able
/// to hand back strongly-typed response models for direct consumption.
/// - Exhaustive response handling: The client does *not* rely on `Exception`s for signaling errors,
/// but instead utilizes the [NetworkResponse] type to enumerate the various possible responses, both
/// successful and unsuccessful. Only in truly unexpected cases are `Exception`s re-thrown.
/// - Event-based subscription: The client emits events for things that consumers may be interested
/// in to the provided [SturdyHttpEventListener]. This is useful for things like auth failures, or
/// response decoding errors.
/// {@endtemplate}
class SturdyHttp {
  final Dio _dio;
  final Deserializer _deserializer;
  final SturdyHttpEventListener? _eventListener;
  final RetryBehavior _retryBehavior;

  /// The client-level timeouts provided when this [SturdyHttp] was constructed.
  final HttpTimeouts? timeouts;

  /// The interceptors provided when this [SturdyHttp] was constructed.
  UnmodifiableListView<Interceptor> get interceptors =>
      UnmodifiableListView<Interceptor>(_dio.interceptors);

  /// The base URL of the underlying [Dio] instance.
  String get baseUrl => _dio.options.baseUrl;

  /// The [HttpClientAdapter] provided when this [SturdyHttp] was constructed.
  HttpClientAdapter get httpClientAdapter => _dio.httpClientAdapter;

  /// {@macro http_client}
  SturdyHttp({
    required String baseUrl,
    Deserializer deserializer = const MainIsolateDeserializer(),
    List<Interceptor> interceptors = const [],
    SturdyHttpEventListener? eventListener,
    HttpClientAdapter? customAdapter,
    Map<String, String>? proxy,
    bool inferContentType = true,
    RetryBehavior retryBehavior = const NeverRetry(),
    HttpTimeouts? timeouts,
  }) : this._(
         dio: _configureDio(
           baseUrl: baseUrl,
           deserializer: deserializer,
           interceptors: interceptors,
           customAdapter: customAdapter,
           proxy: proxy,
           inferContentType: inferContentType,
           timeouts: timeouts,
         ),
         deserializer: deserializer,
         eventListener: eventListener,
         retryBehavior: retryBehavior,
         timeouts: timeouts,
       );

  /// {@macro http_client}
  SturdyHttp._({
    required Dio dio,
    required Deserializer deserializer,
    required SturdyHttpEventListener? eventListener,
    required RetryBehavior retryBehavior,
    required this.timeouts,
  }) : _dio = dio,
       _deserializer = deserializer,
       _eventListener = eventListener,
       _retryBehavior = retryBehavior;

  /// {@macro http_client}
  SturdyHttp withBaseUrl(String baseUrl) {
    return SturdyHttp._(
      dio:
          Dio()
            ..options.baseUrl = baseUrl
            ..options.listFormat = ListFormat.multiCompatible
            ..options.connectTimeout = timeouts?.connect
            ..options.receiveTimeout = timeouts?.receive
            ..options.sendTimeout = timeouts?.send
            ..interceptors.addAll(_dio.interceptors)
            ..interceptors.removeImplyContentTypeInterceptor()
            ..httpClientAdapter = _dio.httpClientAdapter,
      deserializer: _deserializer,
      eventListener: _eventListener,
      retryBehavior: _retryBehavior,
      timeouts: timeouts,
    );
  }

  Future<void> _onEvent(SturdyHttpEvent event) async {
    await _eventListener?.onEvent(event);
  }

  /// Executes the provided [request] and returns the result of type [M] that is
  /// produced by the [onResponse] parameter.
  ///
  /// If [onResponse] fails to produce an [M] and instead throws an [Exception],
  /// some known failure reasons are emitted via [SturdyHttpEvent]s and the
  /// [Exception] is re-thrown.
  Future<M> execute<R, M>(
    NetworkRequest request, {
    required M Function(NetworkResponse<R> response) onResponse,
  }) async {
    final responsePayload = await _handleRequest<R, M>(request);

    try {
      return await _deserializer.deserialize(
        response: responsePayload.resolvedResponse,
        onResponse: onResponse,
      );
    } on Exception catch (e) {
      final response = responsePayload.dioResponse;
      if (response != null) {
        await _onEvent(
          DecodingError(
            request: response.requestOptions,
            exception: e,
            stackTrace: StackTrace.current,
          ),
        );
      }

      rethrow;
    }
  }

  Future<_ResponsePayload<R>> _handleRequest<R, M>(
    NetworkRequest request,
  ) async {
    final now = DateTime.now();
    final callTimeout = request.timeouts?.call ?? timeouts?.call;
    final deadline =
        request.options?.extra?[callDeadlineExtraKey] as DateTime? ??
        (callTimeout == null ? null : now.add(callTimeout));

    // The caller's token is never cancelled by the call timeout, so a
    // separate token carries both the caller's cancel and the timeout.
    // Attempts, retry waits and the `RequestCompleted` event race against
    // this token's cancellation, so work that ignores the token, such as a
    // stalled event listener, cannot hold the call once it is cancelled.
    CancelToken? callToken;
    Timer? callTimer;
    final callerToken = request.cancelToken;
    if (deadline != null) {
      final remaining = deadline.difference(now);
      final timeout = remaining.isNegative ? Duration.zero : remaining;
      final token = callToken = CancelToken();
      if (callerToken != null) _forwardCancel(from: callerToken, to: token);
      // A caller cancel that arrived first stays a caller cancel.
      void expire() {
        if (!token.isCancelled) token.cancel(CallTimeoutException(timeout));
      }

      // An inherited deadline can already have passed. Expiring now, rather
      // than on a zero-length timer, means no attempt starts after it.
      if (timeout > Duration.zero) {
        callTimer = Timer(timeout, expire);
      } else {
        expire();
      }
    }

    NetworkResponse<R> callTimeoutError(DioException error) {
      final timeout = (error.error! as CallTimeoutException).timeout;
      return GenericError(
        message:
            'No response within ${timeout.inMilliseconds} ms '
            'for ${request.path}',
        isConnectionIssue: true,
        error: error,
      );
    }

    NetworkResponse<R> unexpectedStatusError(DioException error) {
      return GenericError(
        message:
            'Unexpected status code ${error.response?.statusCode} returned for ${request.path}',
        isConnectionIssue: error.isConnectionIssue(),
        error: error,
      );
    }

    // The result for a cancelled call token, matching what `send` returns
    // when Dio reports the same cancel.
    NetworkResponse<R> cancelledError(DioException error) {
      return error.error is CallTimeoutException
          ? callTimeoutError(error)
          : unexpectedStatusError(error);
    }

    Future<(Response<Object?>?, NetworkResponse<R>)> send(
      NetworkRequest request,
    ) async {
      late final NetworkResponse<R> resolvedResponse;
      Response<Object?>? dioResponse;
      try {
        // By expecting `Object?` we allow for cases where an API will return
        // nothing in success cases (e.g 204), but JSON in failure cases such as
        // 422. If we specify `Json` here, Dio will map the null/empty case to
        // an empty String, which is not a subtype of Json.
        dioResponse = await _dio.request<Object?>(
          request.path,
          data: switch (request.data) {
            EmptyRequestBody() => null,
            JsonRequestBody(:final data) => data,
            RawRequestBody(:final data) => data,
          },
          queryParameters: request.queryParams,
          options: (request.options ?? Options()).copyWith(
            method: request.type.name,
            connectTimeout: request.timeouts?.connect,
            receiveTimeout: request.timeouts?.receive,
            sendTimeout: request.timeouts?.send,
            extra:
                deadline == null
                    ? null
                    : {
                      ...?request.options?.extra,
                      callDeadlineExtraKey: deadline,
                    },
          ),
          cancelToken: callToken ?? request.cancelToken,
          onReceiveProgress: request.onReceiveProgress,
          onSendProgress: request.onSendProgress,
        );
        if (dioResponse.statusCode == 204) {
          resolvedResponse = const OkNoContent();
        } else {
          final data = dioResponse.data;
          if (data == null || data is! R) {
            String buildErrorMessage() {
              final messageSuffix =
                  data == null
                      // Disallow empty responses when status code is non-204
                      ? 'was null and status code was ${dioResponse!.statusCode}'
                      // Enforce that response data matches expected, otherwise we'll run into casting
                      // issues below
                      : 'was of type ${data.runtimeType} when it should have been of type $R';
              return 'Request to ${request.path} was successful but response data $messageSuffix';
            }

            resolvedResponse = GenericError(
              message: buildErrorMessage(),
              isConnectionIssue: false,
            );
          } else {
            resolvedResponse = OkResponse(data as R);
          }
        }
      } on DioException catch (error) {
        if (error.error is CallTimeoutException) {
          return (null, callTimeoutError(error));
        }
        dioResponse = error.response;
        switch (error.response?.statusCode) {
          case 401:
            await _onEvent(AuthFailure(request: error.requestOptions));
            resolvedResponse = Unauthorized(error: error);
            break;
          case 403:
            resolvedResponse = Forbidden(error: error);
            break;
          case 404:
            resolvedResponse = NotFound(error: error);
            break;
          case 422:
            resolvedResponse = UnprocessableEntity<R>(
              error: error,
              response: error.response?.data as R,
            );
            break;
          case 426:
            resolvedResponse = UpgradeRequired(error: error);
            break;
          case 500:
            resolvedResponse = ServerError(error: error);
            break;
          case 503:
            resolvedResponse = ServiceUnavailable(error: error);
            break;
          default:
            resolvedResponse = unexpectedStatusError(error);
        }
      }
      return (dioResponse, resolvedResponse);
    }

    RetryBehavior determineRetryBehavior() {
      // The request's retry behavior takes precedence over the client's
      final priority = [request.retryBehavior, _retryBehavior];
      return priority.firstWhere(
        (b) => b is! Unspecified,
        orElse: () => NeverRetry(),
      );
    }

    // Sends one attempt. When a deadline is set, the attempt resolves as soon
    // as the call token is cancelled, by the deadline or by the caller, even
    // if `send` is still waiting; a late result from `send` is discarded.
    Future<(Response<Object?>?, NetworkResponse<R>)> attempt() {
      final token = callToken;
      if (token == null) return send(request);
      return Future.any([
        send(request),
        token.whenCancel.then((error) => (null, cancelledError(error))),
      ]);
    }

    // Waits [interval], ending early if the call token is cancelled. The
    // timer is cancelled either way so it does not outlive the call.
    Future<void> wait(Duration interval) async {
      final elapsed = Completer<void>();
      final timer = Timer(interval, elapsed.complete);
      try {
        await Future.any([
          elapsed.future,
          if (callToken != null) callToken.whenCancel,
        ]);
      } finally {
        timer.cancel();
      }
    }

    final retryBehavior = determineRetryBehavior();
    (Response<Object?>?, NetworkResponse<R>) response;
    try {
      response = await attempt();
      var retryCount = 0;
      while (!response.$2.isSuccess &&
          retryBehavior.shouldRetry(response.$1, retryCount)) {
        // `retryBehavior` must be a `Retry`, otherwise we wouldn't be here.
        await wait((retryBehavior as Retry).retryInterval);
        final cancelError = callToken?.cancelError;
        if (cancelError != null) {
          response = (null, cancelledError(cancelError));
          break;
        }
        retryCount++;
        response = await attempt();
      }

      final dioResponse = response.$1;
      if (dioResponse != null) {
        final completed = _onEvent(
          RequestCompleted(
            request: dioResponse.requestOptions,
            headers: dioResponse.headers.map.map(
              (key, values) => MapEntry(key, values.join(', ')),
            ),
            statusCode: dioResponse.statusCode,
            isSuccess: response.$2.isSuccess,
            shouldTriggerDataMutation: request.shouldTriggerDataMutation,
          ),
        );
        // The response is already decided, so a deadline that passes while
        // the listener runs ends the wait and the response is still returned.
        await Future.any([
          completed,
          if (callToken != null) callToken.whenCancel,
        ]);
      }
    } finally {
      callTimer?.cancel();
      if (callerToken != null && callToken != null) {
        _stopForwardingCancel(from: callerToken, to: callToken);
      }
    }

    return _ResponsePayload(
      request: request,
      dioResponse: response.$1,
      resolvedResponse: response.$2,
    );
  }
}

class _ResponsePayload<R> {
  final NetworkRequest request;
  final Response<dynamic>? dioResponse;
  final NetworkResponse<R> resolvedResponse;

  _ResponsePayload({
    required this.request,
    required this.dioResponse,
    required this.resolvedResponse,
  });
}

Dio _configureDio({
  required String baseUrl,
  required List<Interceptor> interceptors,
  required Deserializer deserializer,
  required HttpClientAdapter? customAdapter,
  required Map<String, String>? proxy,
  required bool inferContentType,
  required HttpTimeouts? timeouts,
}) {
  return Dio()
    // Instruct Dio to use the same Isolate approach as requested of SturdyHttp
    ..transformer =
        deserializer is MainIsolateDeserializer
            ? SyncTransformer()
            : BackgroundTransformer()
    ..options.baseUrl = baseUrl
    ..options.listFormat = ListFormat.multiCompatible
    ..options.connectTimeout = timeouts?.connect
    ..options.receiveTimeout = timeouts?.receive
    ..options.sendTimeout = timeouts?.send
    ..interceptors.addAll(interceptors)
    ..map((dio) {
      if (customAdapter != null) {
        dio.httpClientAdapter = customAdapter;
      }
      if (!inferContentType) {
        dio.interceptors.removeImplyContentTypeInterceptor();
      }
      return dio;
    });
}

/// For each caller [CancelToken], the call tokens of calls still in flight
/// that its cancel is forwarded to.
///
/// A `Future` listener cannot be removed, so each caller token gets one
/// `whenCancel` listener for its lifetime. Calls add and remove their own
/// token from the set. A long-lived caller token reused across many calls
/// therefore holds one listener and only the tokens of calls in flight.
final _cancelForwards = Expando<Set<CancelToken>>();

void _forwardCancel({required CancelToken from, required CancelToken to}) {
  if (from.isCancelled) {
    to.cancel(from.cancelError?.error);
    return;
  }
  var targets = _cancelForwards[from];
  if (targets == null) {
    final created = targets = _cancelForwards[from] = <CancelToken>{};
    from.whenCancel.then((e) {
      for (final target in [...created]) {
        target.cancel(e.error);
      }
      created.clear();
    });
  }
  targets.add(to);
}

void _stopForwardingCancel({
  required CancelToken from,
  required CancelToken to,
}) {
  _cancelForwards[from]?.remove(to);
}

extension _ObjectExtensions<I extends Object?> on I {
  T? map<T>(T Function(I) transform) {
    if (this == null) return null;
    return transform(this);
  }
}
