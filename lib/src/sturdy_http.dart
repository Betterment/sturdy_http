import 'dart:async';
import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) : this._(
          dio: _configureDio(
            baseUrl: baseUrl,
            deserializer: deserializer,
            interceptors: interceptors,
            customAdapter: customAdapter,
            proxy: proxy,
          ),
          deserializer: deserializer,
          eventListener: eventListener,
        );

  /// {@macro http_client}
  SturdyHttp._({
    required Dio dio,
    required Deserializer deserializer,
    required SturdyHttpEventListener? eventListener,
  })  : _dio = dio,
        _deserializer = deserializer,
        _eventListener = eventListener;

  /// {@macro http_client}
  SturdyHttp withBaseUrl(String baseUrl) {
    return SturdyHttp._(
      dio: Dio()
        ..options.baseUrl = baseUrl
        ..options.listFormat = ListFormat.multiCompatible
        ..interceptors.addAll(_dio.interceptors)
        ..interceptors.removeImplyContentTypeInterceptor()
        ..httpClientAdapter = _dio.httpClientAdapter,
      deserializer: _deserializer,
      eventListener: _eventListener,
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
      if (e is CheckedFromJsonException) {
        await _onEvent(
          SturdyHttpEvent.decodingError(
            responsePayload.dioResponse!.requestOptions,
            e,
            e.innerStack,
          ),
        );
      }
      rethrow;
    }
  }

  Future<_ResponsePayload<R>> _handleRequest<R, M>(
      NetworkRequest request) async {
    late final NetworkResponse<R> resolvedResponse;
    Response<Object?>? dioResponse;
    try {
      // By expecting `Object?` we allow for cases where an API will return
      // nothing in success cases (e.g 204), but JSON in failure cases such as
      // 422. If we specify `Json` here, Dio will map the null/empty case to
      // an empty String, which is not a subtype of Json.
      dioResponse = await _dio.request<Object?>(
        request.path,
        data: request.data.when(
          empty: () => null,
          json: (json) => json,
          raw: (data) => data,
        ),
        queryParameters: request.queryParams,
        options: request.options != null
            ? request.options!.copyWith(method: request.type.name)
            : Options(method: request.type.name),
        cancelToken: request.cancelToken,
        onReceiveProgress: request.onReceiveProgress,
        onSendProgress: request.onSendProgress,
      );
      if (dioResponse.statusCode == 204) {
        resolvedResponse = const NetworkResponse.okNoContent();
      } else {
        final data = dioResponse.data;
        if (data == null || data is! R) {
          String buildErrorMessage() {
            final messageSuffix = data == null
                // Disallow empty responses when status code is non-204
                ? 'was null and status code was ${dioResponse!.statusCode}'
                // Enforce that response data matches expected, otherwise we'll run into casting
                // issues below
                : 'was of type ${data.runtimeType} when it should have been of type $R';
            return 'Request to ${request.path} was successful but response data $messageSuffix';
          }

          resolvedResponse = NetworkResponse.genericError(
            message: buildErrorMessage(),
            isConnectionIssue: false,
          );
        } else {
          resolvedResponse = NetworkResponse.ok(data as R);
        }
      }
    } on DioException catch (error) {
      switch (error.response?.statusCode) {
        case 401:
          await _onEvent(SturdyHttpEvent.authFailure(error.requestOptions));
          resolvedResponse = NetworkResponse.unauthorized(error);
          break;
        case 403:
          resolvedResponse = NetworkResponse.forbidden(error);
          break;
        case 404:
          resolvedResponse = NetworkResponse.notFound(error);
          break;
        case 422:
          resolvedResponse = NetworkResponse.unprocessableEntity(
            error: error,
            response: error.response?.data as R,
          );
          break;
        case 500:
          resolvedResponse = NetworkResponse.serverError(error);
          break;
        case 503:
          resolvedResponse = NetworkResponse.serviceUnavailable(error);
          break;
        default:
          resolvedResponse = NetworkResponse.genericError(
            message:
                'Unexpected status code ${error.response?.statusCode} returned for ${request.path}',
            isConnectionIssue: error.isConnectionIssue(),
            error: error,
          );
      }
    }
    if (resolvedResponse.isSuccess && request.shouldTriggerDataMutation) {
      await _onEvent(
          SturdyHttpEvent.mutativeRequestSuccess(dioResponse!.requestOptions));
    }
    return _ResponsePayload<R>(
      request: request,
      dioResponse: dioResponse,
      resolvedResponse: resolvedResponse,
    );
  }
}

class _ResponsePayload<T> {
  final NetworkRequest request;
  final Response<dynamic>? dioResponse;
  final NetworkResponse<T> resolvedResponse;

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
}) {
  return Dio()
    // Instruct Dio to use the same Isolate approach as requested of SturdyHttp
    ..transformer = deserializer is MainIsolateDeserializer
        ? SyncTransformer()
        : BackgroundTransformer()
    ..options.baseUrl = baseUrl
    ..options.listFormat = ListFormat.multiCompatible
    ..interceptors.addAll(interceptors)
    ..interceptors.removeImplyContentTypeInterceptor()
    ..map((dio) {
      if (customAdapter != null) {
        return dio..httpClientAdapter = customAdapter;
      }
      return dio;
    });
}

extension _ObjectExtensions<I extends Object?> on I {
  T? map<T>(T Function(I) transform) {
    if (this == null) return null;
    return transform(this);
  }
}
