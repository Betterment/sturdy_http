/// {@template http_timeouts}
/// Timeouts for HTTP requests.
///
/// On a `SturdyHttp` client, a null field means no limit. On a request, a
/// null field uses the client's value, so a request can change a client
/// limit but cannot remove it.
/// {@endtemplate}
class HttpTimeouts {
  /// {@macro http_timeouts}
  const HttpTimeouts({this.connect, this.receive, this.send, this.call});

  /// Per-attempt limit on establishing the connection.
  final Duration? connect;

  /// Per-attempt limit on receiving response data.
  final Duration? receive;

  /// Per-attempt limit on sending request data.
  final Duration? send;

  /// Limit on the whole call: every attempt, every retry wait and the
  /// `RequestCompleted` event. Response deserialization and the
  /// `DecodingError` event run after the call and are not covered.
  final Duration? call;

  @override
  bool operator ==(Object other) =>
      other is HttpTimeouts &&
      other.connect == connect &&
      other.receive == receive &&
      other.send == send &&
      other.call == call;

  @override
  int get hashCode => Object.hash(connect, receive, send, call);

  @override
  String toString() =>
      'HttpTimeouts(connect: $connect, receive: $receive, send: $send, '
      'call: $call)';
}
