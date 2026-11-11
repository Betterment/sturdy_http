/// The `Options.extra` key that holds a call's deadline as a [DateTime].
/// A request that carries it uses that deadline instead of starting a new
/// one. An interceptor that retries by calling `execute` must copy this key
/// onto the retry request, otherwise the retry starts a new deadline.
const String callDeadlineExtraKey = 'sturdy_http_call_deadline';

/// The cancel reason when a call does not finish within its call timeout.
class CallTimeoutException implements Exception {
  /// The time the call was given.
  final Duration timeout;

  /// Creates a [CallTimeoutException] for [timeout].
  const CallTimeoutException(this.timeout);

  @override
  String toString() => 'CallTimeoutException(timeout: $timeout)';
}
