import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sturdy_http/sturdy_http.dart';

part 'sturdy_http_event_listener.freezed.dart';

/// {@template http_client_event_listener}
///
/// A listener that can optionally be supplied when constructing
/// an [SturdyHttp] to be notified when various events occur
/// while processing [NetworkRequest]s.
///
/// {@endtemplate}
abstract class SturdyHttpEventListener {
  /// {@macro http_client_event_listener}
  const SturdyHttpEventListener();

  /// Invoked whenever a new [SturdyHttpEvent] occurs.
  Future<void> onEvent(SturdyHttpEvent event);
}

/// Represents an event that occurs during a request lifecycle.
@freezed
class SturdyHttpEvent with _$SturdyHttpEvent {
  /// Indicates that there was an Exception thrown when attempting to decode
  /// the server response.
  const factory SturdyHttpEvent.decodingError(
    RequestOptions request,
    Exception exception,
    StackTrace? stackTrace,
  ) = _JsonDecodingError;

  /// Indicates that a network request returned a response with status code 401.
  const factory SturdyHttpEvent.authFailure(RequestOptions request) =
      _AuthFailure;

  /// Indicates that a "mutative" request succeeded and the data on the client
  /// likely does not match the data on the server.
  /// See [NetworkRequest.shouldTriggerDataMutation].
  const factory SturdyHttpEvent.mutativeRequestSuccess(RequestOptions request) =
      _OnMutativeRequestSuccess;
}
