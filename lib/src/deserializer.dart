part of 'sturdy_http.dart';

/// {@template deserializer}
///
/// Contract to be implemented to facilitate
/// transforming [NetworkResponse] into the
/// desired application domain models.
///
/// {@endtemplate}
abstract class Deserializer {
  /// {@macro deserializer}
  Future<M> deserialize<R, M>({
    required NetworkResponse<R> response,
    required M Function(NetworkResponse<R>) onResponse,
  });
}

/// {@template main_isolate_deserializer}
///
/// A [Deserializer] that does its work directly on the main
/// isolate.
///
/// {@endtemplate}
class MainIsolateDeserializer implements Deserializer {
  /// {@macro main_isolate_deserializer}
  const MainIsolateDeserializer();
  @override
  Future<M> deserialize<R, M>({
    required NetworkResponse<R> response,
    required M Function(NetworkResponse<R> response) onResponse,
  }) async {
    return onResponse(response);
  }
}

const _workerIsolateName = 'sturdyHttpWorkerIsolate';

/// A [Deserializer] that shifts its work to a worker isolate
/// named [_workerIsolateName]. The worker isolate is spawned
/// on the first request to [deserialize] for this instance and
/// re-used to avoid the high cost of spinning up new [Isolate]s.
///
/// When [_IsolateResult]s are returned that contain an [Exception],
/// that [Exception] will be directly re-thrown. If a low-level
/// Isolate error occurs such that no [_IsolateResult] could be returned,
/// an [Exception] will be thrown describing the problem.
class BackgroundDeserializer implements Deserializer {
  // The ReceivePort managed by the main Isolate
  final _mainReceivePort = ReceivePort();
  // The SendPort associated with the worker Isolate's ReceivePort
  SendPort? _workerSendPort;
  // Store a reference to the worker Isolate so we know whether
  // it's been spawned
  Isolate? _workerIsolate;
  // A Stream of either _IsolateResults or other types
  // signaling Isolate problems
  Stream<dynamic>? _results;

  @override
  Future<M> deserialize<R, M>({
    required NetworkResponse<R> response,
    required M Function(NetworkResponse<R> response) onResponse,
  }) async {
    await _initializeOnFirstRequest();
    onResponseFunction() => onResponse(response);
    final request = _IsolateRequest(
      resultPort: _mainReceivePort.sendPort,
      decoder: onResponseFunction,
    );
    _workerSendPort!.send(request);
    final dynamic result = await _results!.firstWhere(
      (dynamic r) =>
          (r is _IsolateResult && r.requestId == request.id) ||
          r is List<dynamic>,
      // In the event the Isolate terminates and there is no result, return null
      orElse: () => null,
    );
    if (result is _IsolateResult) {
      if (result.error != null) {
        throw result.error!;
      }
      return result.response as M;
    } else {
      if (result == null) {
        throw Exception(
          '$_workerIsolateName terminated without providing a result for ${request.id}',
        );
      }
      // Uncaught Exceptions will be in the form of a 2 element List<dynamic>,
      // the toString() output of the Exception and its StackTrace
      final exception = (result as List<dynamic>)[0] as String;
      throw Exception('$_workerIsolateName $exception');
    }
  }

  /// Performs one-time initializations required to perform work
  /// on a worker [Isolate].
  Future<void> _initializeOnFirstRequest() async {
    // Use BroadcastStream to facilitate multiple requests for
    // deserialization over the same SendPort.
    _results ??= _mainReceivePort.asBroadcastStream();
    _workerIsolate ??= await _spawnIsolate(mainReceivePort: _mainReceivePort);
    _workerSendPort ??= await _results!.first as SendPort;
  }
}

/// Initializes the worker [Isolate] that will be used for
/// deserialization. The [mainReceivePort] will be used
/// to send uncaught [Exception]s back to the client.
Future<Isolate> _spawnIsolate({required ReceivePort mainReceivePort}) async {
  return Isolate.spawn(
    _workerIsolateEntrypoint,
    mainReceivePort.sendPort,
    debugName: _workerIsolateName,
    // Don't bring down the Isolate in the event of an uncaught Exception
    errorsAreFatal: false,
    // Receive uncaught Exceptions over the same SendPort that we'll
    // receive deserialization results
    onError: mainReceivePort.sendPort,
  );
}

/// Entrypoint for the worker [Isolate]. Immediately sends
/// over a [SendPort] by which [_IsolateRequest]s can be
/// sent for processing.
void _workerIsolateEntrypoint(SendPort mainSendPort) {
  final workerReceivePort = ReceivePort();
  // Send the worker's SendPort back to the main Isolate
  // so the main Isolate can communicate to the worker.
  mainSendPort.send(workerReceivePort.sendPort);

  // Listen to incoming _IsolateRequests and deserialize the
  // attached response payload.
  workerReceivePort.listen(_deserialize);
}

/// Attempts to handle an incoming _IsolateRequest.
///
/// Sends a _IsolateResult.ok over the requests
/// resultPort if the request is handled successfully, *or*
/// a _IsolateResult.error in the event of an Exception.
void _deserialize(dynamic message) {
  final request = message as _IsolateRequest;
  final decoder = request.decoder;
  late final _IsolateResult result;
  try {
    final dynamic decoded = decoder.call();
    result = _IsolateResult.ok(decoded, request.id);
  } on Exception catch (e) {
    result = _IsolateResult.error(e, request.id);
  }
  request.resultPort.send(result);
}

/// A request for the worker isolate to deserialize
/// a response using the [decoder]. The [resultPort]
/// will receive a message with the resulting [_IsolateResult].
class _IsolateRequest {
  final String id;
  final SendPort resultPort;
  final dynamic Function() decoder;

  _IsolateRequest({required this.resultPort, required this.decoder})
    : id = const Uuid().v4();
}

/// The result of an attempt to deserialize a response.
/// When the deserialization completes successfully,
/// the result will populate the [response] field. Otherwise,
/// [error] will contain the produced [Exception].
class _IsolateResult {
  final dynamic response;
  final Exception? error;
  final String requestId;

  _IsolateResult._({
    required this.response,
    required this.error,
    required this.requestId,
  });

  factory _IsolateResult.ok(dynamic value, String requestId) =>
      _IsolateResult._(response: value, error: null, requestId: requestId);

  factory _IsolateResult.error(Exception error, String requestId) =>
      _IsolateResult._(response: null, error: error, requestId: requestId);
}
