import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sturdy_http/sturdy_http.dart';

part 'network_response.freezed.dart';

/// The produced object after [SturdyHttp] processes a [NetworkRequest].
///
/// These cases enumerate only those we wish to represent on the client per
/// https://github.com/Betterment/the-book/blob/main/docs/general-platform/rest-apis.md#use-only-a-limited-subset-of-http-status-codes.
///
/// Most often the call sites executing a [NetworkRequest] will only be interested
/// in a select few of these, and will resolve their error cases via a `maybeWhen`
/// using the `orElse` clause.
@freezed
class NetworkResponse<R> with _$NetworkResponse<R> {
  /// 200 - for successful responses that include a body.
  const factory NetworkResponse.ok(R response) = _Ok;

  /// 204 - for successful responses that don't include a body.
  const factory NetworkResponse.okNoContent() = _OkNoContent;

  /// 401 - for responses when the request was missing required authentication.
  const factory NetworkResponse.unauthorized(DioException error) =
      _Unauthorized;

  /// 403 - for responses when the request was authenticated but the
  /// action is not authorized/allowed.
  const factory NetworkResponse.forbidden(DioException error) = _Forbidden;

  /// 404 - for responses when we could not locate a resource, or when
  /// someone would attempt to access a forbidden resource due to a bug.
  const factory NetworkResponse.notFound(DioException error) = _NotFound;

  /// 422 - for responses when the request inputs failed our validations.
  const factory NetworkResponse.unprocessableEntity({
    required DioException error,
    required R response,
  }) = _UnprocessableEntity;

  /// 426 - for responses when access to a resource requires a client upgrade.
  const factory NetworkResponse.upgradeRequired(DioException error) =
      _UpgradeRequired;

  /// 500 - for responses where the service had an error while processing
  /// the request.
  const factory NetworkResponse.serverError(DioException error) = _ServerError;

  /// 503 - for responses when an underlying service issue prevents us from
  /// fulfilling the request.
  const factory NetworkResponse.serviceUnavailable(DioException error) =
      _ServiceUnavailable;

  /// An error designated as a fallback in the event that we receive a status code
  /// we don't explicitly handle *or* a request or response otherwise fails to meet
  /// our expectations as "valid". The [message] will describe the condition and a
  /// [DioException] will be present if it was available as a result of the request.
  const factory NetworkResponse.genericError({
    required String message,
    required bool isConnectionIssue,
    DioException? error,
  }) = _GenericError;
}

/// Extensions on the [NetworkResponse] type
extension NetworkResponseX<M> on NetworkResponse<M> {
  /// Whether this [NetworkResponse] should be considered successful
  bool get isSuccess => this is _Ok || this is _OkNoContent;
}
