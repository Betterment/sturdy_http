import 'package:charlatan/charlatan.dart';
import 'package:sturdy_http/src/network_request.dart';
import 'package:sturdy_http/src/sturdy_http.dart';
import 'package:sturdy_http/src/sturdy_http_event_listener.dart';

void main(List<String> args) async {
  // Set up some fake HTTP responses using Charlatan
  final charlatan = Charlatan()
    ..whenGet(
      '/foo',
      (request) => CharlatanHttpResponse(
        body: 'Hello World!',
      ),
    )
    ..whenPost(
      '/foo',
      (request) => CharlatanHttpResponse(statusCode: 204),
    );

  // Create your client
  final client = SturdyHttp(
    baseUrl: 'api/v1/',
    customAdapter: charlatan.toFakeHttpClientAdapter(),
    eventListener: ExampleEventListener(),
  );

  // A GetRequest. Prints 'Hello World!'.
  await client.execute<String, void>(
    GetRequest('/foo'),
    onResponse: (r) {
      r.maybeWhen(
        ok: (message) => print(message),
        orElse: () => print('GET /foo failed: $r'),
      );
    },
  );

  // A PostRequest.
  //
  // Prints:
  // 'mutative request success'
  // 'success!' <-- From ExampleEventListener
  await client.execute<String, void>(
    PostRequest('/foo', data: NetworkRequestBody.empty()),
    onResponse: (r) {
      r.maybeWhen(
        okNoContent: () => print('success!'),
        orElse: () => print('POST /foo failed: $r'),
      );
    },
  );
}

class ExampleEventListener implements SturdyHttpEventListener {
  @override
  Future<void> onEvent(SturdyHttpEvent event) {
    return event.when(
      decodingError: (_, __, ___) async => print('decoding error'),
      authFailure: (_) async => print('auth failure'),
      mutativeRequestSuccess: (_) async => print('mutative request success'),
    );
  }
}
