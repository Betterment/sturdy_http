// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';

/// The produced object after [SturdyHttp] processes a [NetworkRequest].
///
/// These cases enumerate only those we wish to represent on the client per
/// https://github.com/Betterment/the-book/blob/main/docs/general-platform/rest-apis.md#use-only-a-limited-subset-of-http-status-codes.
///
/// Most often the call sites executing a [NetworkRequest] will only be interested
/// in a select few of these, and will resolve their error cases via a `maybeWhen`
/// using the `orElse` clause.
sealed class NetworkResponse<R> {
  const NetworkResponse();
}

sealed class NetworkResponseSuccess<R> extends NetworkResponse<R> {
  const NetworkResponseSuccess();
}

final class NoContent<R> extends NetworkResponseSuccess<R> {
  const NoContent();
}

final class Ok<T> extends NetworkResponseSuccess<T> {
  final T response;

  const Ok(this.response);
}

sealed class NetworkResponseFailure<R> extends NetworkResponse<R> {
  final DioException? error;

  const NetworkResponseFailure({this.error});
}

/// 401 - for responses when the request was missing required authentication.
final class Unauthorized<R> extends NetworkResponseFailure<R> {
  const Unauthorized({super.error});
}

/// 403 - for responses when the request was authenticated but the
/// action is not authorized/allowed.
final class Forbidden<R> extends NetworkResponseFailure<R> {
  const Forbidden({super.error});
}

/// 404 - for responses when we could not locate a resource, or when
/// someone would attempt to access a forbidden resource due to a bug.
final class NotFound<R> extends NetworkResponseFailure<R> {
  const NotFound({super.error});
}

/// 422 - for responses when the request inputs failed our validations.
final class UnprocessableEntity<R> extends NetworkResponseFailure<R> {
  final R response;

  const UnprocessableEntity({super.error, required this.response});
}

/// 426 - for responses when a client version upgrade is required
final class UpgradeRequired<R> extends NetworkResponseFailure<R> {
  const UpgradeRequired({super.error});
}

/// 500 - for responses where the service had an error while processing
/// the request.
final class ServerError<R> extends NetworkResponseFailure<R> {
  const ServerError({super.error});
}

/// 503 - for responses when an underlying service issue prevents us from
/// fulfilling the request.
final class ServiceUnavailable<R> extends NetworkResponseFailure<R> {
  const ServiceUnavailable({super.error});
}

final class GenericError<R> extends NetworkResponseFailure<R> {
  const GenericError({
    super.error,
    required this.message,
    required this.isConnectionIssue,
  });

  final String message;
  final bool isConnectionIssue;
}

NetworkResponseSuccess<R>? getSuccess<R>(NetworkResponse<R> response) {
  return switch (response) {
    NoContent() => NoContent(),
    Ok<R>(:final response) => Ok<R>(response),
    _ => null,
  };
}

NetworkResponseFailure<R>? getFail<R>(NetworkResponse<R> response) {
  return switch (response) {
    Unauthorized(:final error) => Unauthorized(error: error),
    Forbidden(:final error) => Forbidden(error: error),
    NotFound(:final error) => NotFound(error: error),
    UnprocessableEntity(:final error, :final response) => UnprocessableEntity<R>(error: error, response: response),
    UpgradeRequired(:final error) => UpgradeRequired(error: error),
    ServerError(:final error) => ServerError(error: error),
    ServiceUnavailable(:final error) => ServiceUnavailable(error: error),
    _ => null,
  };
}

/// Extensions on the [NetworkResponse] type
extension NetworkResponseX<R> on NetworkResponse<R> {
  /// Whether this [NetworkResponse] should be considered successful
  bool get isSuccess => this is NetworkResponseSuccess;
}
