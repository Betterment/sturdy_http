import 'package:dio/dio.dart';
import 'package:sturdy_http/src/network_request.dart';

/// {@template http_client_event_listener}
/// A listener that can optionally be supplied when constructing
/// an [SturdyHttp] to be notified when various events occur
/// while processing [NetworkRequest]s.
/// {@endtemplate}
abstract class SturdyHttpEventListener {
  /// {@macro http_client_event_listener}
  const SturdyHttpEventListener();

  /// Invoked whenever a new [SturdyHttpEvent] occurs.
  Future<void> onEvent(SturdyHttpEvent event);
}

/// Represents an event that occurs during a request lifecycle.
sealed class SturdyHttpEvent {
  /// The [RequestOptions] associated with the request that triggered this event.
  final RequestOptions request;

  SturdyHttpEvent({required this.request});
}

/// {@template decoding_error}
/// Indicates that there was an Exception thrown when attempting to decode
/// the server response.
/// {@endtemplate}
final class DecodingError extends SturdyHttpEvent {
  /// The exception that was thrown during decoding
  final Exception exception;

  /// The stack trace at the point the exception was thrown
  final StackTrace? stackTrace;

  /// {@macro decoding_error}
  DecodingError({required super.request, required this.exception, required this.stackTrace});
}

/// {@template auth_failure}
/// Indicates that a network request returned a response with status code 401.
/// {@endtemplate}
final class AuthFailure extends SturdyHttpEvent {
  /// {@macro auth_failure}
  AuthFailure({required super.request});
}

/// {@template mutative_request_success}
/// Indicates that a "mutative" request succeeded and the data on the client
/// likely does not match the data on the server.
/// See [NetworkRequest.shouldTriggerDataMutation].
/// {@endtemplate}
final class MutativeRequestSuccess extends SturdyHttpEvent {
  /// {@macro mutative_request_success}
  MutativeRequestSuccess({required super.request});
}
