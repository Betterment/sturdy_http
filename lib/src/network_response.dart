import 'package:dio/dio.dart';

/// The produced object after [SturdyHttp] processes a [NetworkRequest].
///
/// These cases enumerate only those we wish to represent on the client per
/// https://github.com/Betterment/the-book/blob/main/docs/general-platform/rest-apis.md#use-only-a-limited-subset-of-http-status-codes.
///
/// Most often the call sites executing a [NetworkRequest] will only be interested
/// in a select few of these, and will resolve their error cases via a `maybeWhen`
/// using the `orElse` clause.
sealed class NetworkResponse {
  const NetworkResponse();
}

sealed class NetworkResponseSuccess extends NetworkResponse {
  const NetworkResponseSuccess();
}

final class NoContent extends NetworkResponseSuccess {
  const NoContent();
}

final class Ok<T> extends NetworkResponseSuccess {
  final T response;

  const Ok(this.response);
}

sealed class NetworkResponseFailure extends NetworkResponse {
  final DioException? error;

  const NetworkResponseFailure({this.error});
}

/// 401 - for responses when the request was missing required authentication.
final class Unauthorized extends NetworkResponseFailure {
  const Unauthorized({super.error});
}

/// 403 - for responses when the request was authenticated but the
/// action is not authorized/allowed.
final class Forbidden extends NetworkResponseFailure {
  const Forbidden({super.error});
}

/// 404 - for responses when we could not locate a resource, or when
/// someone would attempt to access a forbidden resource due to a bug.
final class NotFound extends NetworkResponseFailure {
  const NotFound({super.error});
}

/// 422 - for responses when the request inputs failed our validations.
final class UnprocessableEntity<R> extends NetworkResponseFailure {
  final R response;

  const UnprocessableEntity({super.error, required this.response});
}

/// 426 - for responses when a client version upgrade is required
final class UpgradeRequired extends NetworkResponseFailure {
  const UpgradeRequired({super.error});
}

/// 500 - for responses where the service had an error while processing
/// the request.
final class ServerError extends NetworkResponseFailure {
  const ServerError({super.error});
}

/// 503 - for responses when an underlying service issue prevents us from
/// fulfilling the request.
final class ServiceUnavailable extends NetworkResponseFailure {
  const ServiceUnavailable({super.error});
}

final class GenericError extends NetworkResponseFailure {
  const GenericError({
    super.error,
    required this.message,
    required this.isConnectionIssue,
  });

  final String message;
  final bool isConnectionIssue;
}

NetworkResponseSuccess? getSuccess(NetworkResponse response) {
  return switch (response) {
    NoContent() => NoContent(),
    Ok(:final response) => Ok(response),
    _ => null,
  };
}

NetworkResponseFailure? getFail(NetworkResponse response) {
  return switch (response) {
    Unauthorized(:final error) => Unauthorized(error: error),
    Forbidden(:final error) => Forbidden(error: error),
    NotFound(:final error) => NotFound(error: error),
    UnprocessableEntity(:final error, :final response) =>
      UnprocessableEntity<dynamic>(error: error, response: response),
    UpgradeRequired(:final error) => UpgradeRequired(error: error),
    ServerError(:final error) => ServerError(error: error),
    ServiceUnavailable(:final error) => ServiceUnavailable(error: error),
    _ => null,
  };
}

/// Extensions on the [NetworkResponse] type
extension NetworkResponseX<M> on NetworkResponse {
  /// Whether this [NetworkResponse] should be considered successful
  bool get isSuccess => this is NetworkResponseSuccess;
}
