import 'package:charlatan/charlatan.dart';
import 'package:sturdy_http/sturdy_http.dart';

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
  await client.execute<Json, void>(
    GetRequest('/foo'),
    onResponse: (r) {
      return switch (r) {
        Ok(:final response) => print(response),
        _ => print('GET /foo failed: $r'),
      };
    },
  );

  // A PostRequest.
  //
  // Prints:
  // 'mutative request success' <-- From ExampleEventListener
  // 'success!'
  await client.execute<void, void>(
    PostRequest('/foo', data: NetworkRequestBody.empty()),
    onResponse: (r) {
      return switch (r) {
        NoContent() => print('success!'),
        _ => print('POST /foo failed: $r'),
      };
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
