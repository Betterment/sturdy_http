// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

/// The produced object after [SturdyHttp] processes a [NetworkRequest].
///
/// These cases enumerate only those we wish to represent on the client per
/// https://github.com/Betterment/the-book/blob/main/docs/general-platform/rest-apis.md#use-only-a-limited-subset-of-http-status-codes.
///
/// Most often the call sites executing a [NetworkRequest] will only be interested
/// in a select few of these, and will resolve their error cases via a `maybeWhen`
/// using the `orElse` clause.
sealed class NetworkResponse<R> extends Equatable {
  const NetworkResponse();
}

sealed class NetworkResponseSuccess<R> extends NetworkResponse<R> {
  const NetworkResponseSuccess();
}

final class OkNoContent<R> extends NetworkResponseSuccess<R> {
  const OkNoContent();

  @override
  List<Object?> get props => [];
}

final class OkResponse<T> extends NetworkResponseSuccess<T> {
  final T response;

  const OkResponse(this.response);

  @override
  List<Object?> get props => [response];
}

sealed class NetworkResponseFailure<R> extends NetworkResponse<R> {
  const NetworkResponseFailure();
}

/// 401 - for responses when the request was missing required authentication.
final class Unauthorized<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const Unauthorized({required this.error});

  @override
  List<Object?> get props => [error];
}

/// 403 - for responses when the request was authenticated but the
/// action is not authorized/allowed.
final class Forbidden<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const Forbidden({required this.error});

  @override
  List<Object?> get props => [error];
}

/// 404 - for responses when we could not locate a resource, or when
/// someone would attempt to access a forbidden resource due to a bug.
final class NotFound<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const NotFound({required this.error});

  @override
  List<Object?> get props => [error];
}

/// 422 - for responses when the request inputs failed our validations.
final class UnprocessableEntity<R> extends NetworkResponseFailure<R> {
  final DioException error;
  final R response;

  const UnprocessableEntity({required this.error, required this.response});

  @override
  List<Object?> get props => [error, response];
}

/// 426 - for responses when a client version upgrade is required
final class UpgradeRequired<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const UpgradeRequired({required this.error});

  @override
  List<Object?> get props => [error];
}

/// 500 - for responses where the service had an error while processing
/// the request.
final class ServerError<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const ServerError({required this.error});

  @override
  List<Object?> get props => [error];
}

/// 503 - for responses when an underlying service issue prevents us from
/// fulfilling the request.
final class ServiceUnavailable<R> extends NetworkResponseFailure<R> {
  final DioException error;

  const ServiceUnavailable({required this.error});

  @override
  List<Object?> get props => [error];
}

/// Any "other" error not covered by the above cases. If a [DioException] is present,
/// it has an error status we don't handle. Often this error will occur when no
/// response was received from the server.
final class GenericError<R> extends NetworkResponseFailure<R> {
  const GenericError({
    this.error,
    required this.message,
    required this.isConnectionIssue,
  });

  final DioException? error;
  final String message;
  final bool isConnectionIssue;

  @override
  List<Object?> get props => [error, message, isConnectionIssue];
}

/// Extensions on the [NetworkResponse] type
extension NetworkResponseX<R> on NetworkResponse<R> {
  /// Whether this [NetworkResponse] should be considered successful
  bool get isSuccess => this is NetworkResponseSuccess;
}
