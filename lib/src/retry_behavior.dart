import 'package:dio/dio.dart';

/// Specifies how a failed network request should be handled as it relates
/// to retrying the request.
sealed class RetryBehavior {
  const RetryBehavior();
}

/// {@template unspecified}
/// Indicates that the behavior for retrying a request is unspecified.
///
/// This helps differentiate between an intent to never retry and an intent
/// to defer the decision to something else.
/// {@endtemplate}
class Unspecified extends RetryBehavior {
  /// {@macro unspecified}
  const Unspecified();
}

/// {@template never_retry}
/// Indicates that a request should never be retried.
/// {@endtemplate}
class NeverRetry extends RetryBehavior {
  /// {@macro never_retry}
  const NeverRetry();
}

/// {@template retry_clause}
/// A function that returns `true` if the given `Response` [r] should be retried.
/// {@endtemplate}
typedef RetryClause = bool Function(Response<Object?>? r);

/// {@template retry}
/// Indicates that a request should be retried up to [maxRetries] times with
/// a delay of [retryInterval] between each attempt. Optionally, a [RetryClause]
/// can be provided to further customize the retry behavior.
/// {@endtemplate}
class Retry extends RetryBehavior {
  /// The maximum number of times to retry a request. Must be greater than 0
  /// to have an effect. If `maxRetries` is 1, the request will be attempted
  /// two times total (the initial request and one retry).
  final int maxRetries;

  /// The duration to wait between each retry attempt. Must be greater than 0
  /// to have an effect.
  final Duration retryInterval;

  /// An optional [RetryClause] that can be used to further customize the
  /// retry behavior.
  ///
  /// This will only be invoked until [maxRetries] is exhausted.
  final RetryClause? retryClause;

  /// {@macro retry}
  const Retry({
    required this.maxRetries,
    required this.retryInterval,
    this.retryClause,
  });
}

/// Extensions on the [RetryBehavior] type.
extension RetryBehaviorX on RetryBehavior {
  /// Returns `true` if the request should be retried based on the given
  /// [response] and [retryCount].
  bool shouldRetry(Response<Object?>? response, int retryCount) {
    return switch (this) {
      Retry(:final maxRetries, :final retryClause) => () {
          if (retryCount >= maxRetries) return false;
          return retryClause?.call(response) ?? defaultRetryClause(response);
        }(),
      _ => false,
    };
  }
}

/// The default status codes that will trigger a retry.
///
/// This list can not be modified, so be sure to copy it if used in a custom
/// [RetryClause]. For example:
/// ```dart
/// final statusCodes = List<int>.from(defaultRetryStatusCodes);
/// // Modify statusCodes as needed
/// ```
const defaultRetryStatusCodes = [
  408, // Request Timeout
  429, // Too Many Requests
  440, // Login Timeout
  460, // ClientClosedRequest (AWS Elastic Load Balancer)
  499, // Client Closed Request (Nginx)
  500, // Internal Server Error
  502, // Bad Gateway
  503, // Service Unavailable
  504, // Gateway Timeout
  520, // Unknown Error
  521, // Web Server Is Down
  522, // Connection Timed Out
  523, // Origin Is Unreachable
  524, // A Timeout Occurred
  525, // SSL Handshake Failed
  527, // Railgun Error
  598, // Network Read Timeout Error
  599, // Network Connect Timeout Error
];

/// The default [RetryClause] to be used when [Retry] is specified without
/// a custom [RetryClause].
bool defaultRetryClause(Response<Object?>? r) {
  return r == null || defaultRetryStatusCodes.contains(r.statusCode);
}
