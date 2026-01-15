import 'package:charlatan/charlatan.dart';
import 'package:dio/dio.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart';

void main() {
  group('SturdyHttpEventListener', () {
    group('RequestCompleted', () {
      test('emits for successful GET request', () async {
        final charlatan = Charlatan();
        final events = <RequestCompleted>[];

        charlatan.whenGet(
          '/test',
          (request) => CharlatanHttpResponse(body: {'data': 'value'}),
        );

        final client = SturdyHttp(
          baseUrl: 'http://example.com',
          customAdapter: charlatan.toFakeHttpClientAdapter(),
          eventListener: _TestEventListener(onRequestCompleted: events.add),
        );

        await client.execute<Json, void>(
          const GetRequest('/test'),
          onResponse: (_) {},
        );

        expect(events, hasLength(1));
        expect(events.first.request.path, '/test');
        expect(events.first.statusCode, 200);
        expect(events.first.isSuccess, isTrue);
        expect(events.first.shouldTriggerDataMutation, isFalse);
      });

      test(
        'emits for successful POST request with shouldTriggerDataMutation true',
        () async {
          final charlatan = Charlatan();
          final events = <RequestCompleted>[];

          charlatan.whenPost(
            '/create',
            (request) => CharlatanHttpResponse(body: {'id': 1}),
          );

          final client = SturdyHttp(
            baseUrl: 'http://example.com',
            customAdapter: charlatan.toFakeHttpClientAdapter(),
            eventListener: _TestEventListener(onRequestCompleted: events.add),
          );

          await client.execute<Json, void>(
            PostRequest('/create', data: JsonRequestBody({'name': 'test'})),
            onResponse: (_) {},
          );

          expect(events, hasLength(1));
          expect(events.first.request.path, '/create');
          expect(events.first.statusCode, 200);
          expect(events.first.isSuccess, isTrue);
          expect(events.first.shouldTriggerDataMutation, isTrue);
        },
      );

      test('emits for error responses', () async {
        final charlatan = Charlatan();
        final events = <RequestCompleted>[];

        charlatan.whenGet(
          '/not-found',
          (request) => CharlatanHttpResponse(statusCode: 404),
        );

        final client = SturdyHttp(
          baseUrl: 'http://example.com',
          customAdapter: charlatan.toFakeHttpClientAdapter(),
          eventListener: _TestEventListener(onRequestCompleted: events.add),
        );

        await client.execute<Json, void>(
          const GetRequest('/not-found'),
          onResponse: (_) {},
        );

        expect(events, hasLength(1));
        expect(events.first.request.path, '/not-found');
        expect(events.first.statusCode, 404);
        expect(events.first.isSuccess, isFalse);
      });

      test('emits for 401 responses alongside AuthFailure', () async {
        final charlatan = Charlatan();
        final requestCompletedEvents = <RequestCompleted>[];
        final authFailureEvents = <RequestOptions>[];

        charlatan.whenGet(
          '/unauthorized',
          (request) => CharlatanHttpResponse(statusCode: 401),
        );

        final client = SturdyHttp(
          baseUrl: 'http://example.com',
          customAdapter: charlatan.toFakeHttpClientAdapter(),
          eventListener: _TestEventListener(
            onRequestCompleted: requestCompletedEvents.add,
            onAuthFailure: authFailureEvents.add,
          ),
        );

        await client.execute<Json, void>(
          const GetRequest('/unauthorized'),
          onResponse: (_) {},
        );

        expect(requestCompletedEvents, hasLength(1));
        expect(requestCompletedEvents.first.statusCode, 401);
        expect(requestCompletedEvents.first.isSuccess, isFalse);

        expect(authFailureEvents, hasLength(1));
        expect(authFailureEvents.first.path, '/unauthorized');
      });

      group('headers', () {
        test('includes all response headers', () async {
          final charlatan = Charlatan();
          final events = <RequestCompleted>[];

          charlatan.whenGet(
            '/with-headers',
            (request) => CharlatanHttpResponse(
              body: {'data': 'value'},
              headers: {
                'X-Custom-Header': 'custom-value',
                'X-Another-Header': 'another-value',
              },
            ),
          );

          final client = SturdyHttp(
            baseUrl: 'http://example.com',
            customAdapter: charlatan.toFakeHttpClientAdapter(),
            eventListener: _TestEventListener(onRequestCompleted: events.add),
          );

          await client.execute<Json, void>(
            const GetRequest('/with-headers'),
            onResponse: (_) {},
          );

          expect(events, hasLength(1));
          expect(events.first.headers['X-Custom-Header'], 'custom-value');
          expect(events.first.headers['X-Another-Header'], 'another-value');
        });

        test('includes headers from error responses', () async {
          final charlatan = Charlatan();
          final events = <RequestCompleted>[];

          charlatan.whenGet(
            '/error-with-headers',
            (request) => CharlatanHttpResponse(
              statusCode: 500,
              headers: {'X-Error-Id': 'error-123'},
            ),
          );

          final client = SturdyHttp(
            baseUrl: 'http://example.com',
            customAdapter: charlatan.toFakeHttpClientAdapter(),
            eventListener: _TestEventListener(onRequestCompleted: events.add),
          );

          await client.execute<Json, void>(
            const GetRequest('/error-with-headers'),
            onResponse: (_) {},
          );

          expect(events, hasLength(1));
          expect(events.first.statusCode, 500);
          expect(events.first.isSuccess, isFalse);
          expect(events.first.headers['X-Error-Id'], 'error-123');
        });
      });

      group('shouldTriggerDataMutation', () {
        test('passes through true from request', () async {
          final charlatan = Charlatan();
          final events = <RequestCompleted>[];

          charlatan.whenPost('/post', (request) => CharlatanHttpResponse());

          final client = SturdyHttp(
            baseUrl: 'http://example.com',
            customAdapter: charlatan.toFakeHttpClientAdapter(),
            eventListener: _TestEventListener(onRequestCompleted: events.add),
          );

          await client.execute<Json, void>(
            PostRequest(
              '/post',
              data: JsonRequestBody({}),
              shouldTriggerDataMutation: true,
            ),
            onResponse: (_) {},
          );

          expect(events.first.shouldTriggerDataMutation, isTrue);
        });

        test('passes through false from request', () async {
          final charlatan = Charlatan();
          final events = <RequestCompleted>[];

          charlatan.whenPost('/post', (request) => CharlatanHttpResponse());

          final client = SturdyHttp(
            baseUrl: 'http://example.com',
            customAdapter: charlatan.toFakeHttpClientAdapter(),
            eventListener: _TestEventListener(onRequestCompleted: events.add),
          );

          await client.execute<Json, void>(
            PostRequest(
              '/post',
              data: JsonRequestBody({}),
              shouldTriggerDataMutation: false,
            ),
            onResponse: (_) {},
          );

          expect(events.first.shouldTriggerDataMutation, isFalse);
        });
      });
    });

    group('AuthFailure', () {
      test('emits for 401 responses', () async {
        final charlatan = Charlatan();
        final events = <RequestOptions>[];

        charlatan.whenGet(
          '/unauthorized',
          (request) => CharlatanHttpResponse(statusCode: 401),
        );

        final client = SturdyHttp(
          baseUrl: 'http://example.com',
          customAdapter: charlatan.toFakeHttpClientAdapter(),
          eventListener: _TestEventListener(onAuthFailure: events.add),
        );

        await client.execute<Json, void>(
          const GetRequest('/unauthorized'),
          onResponse: (_) {},
        );

        expect(events, hasLength(1));
        expect(events.first.path, '/unauthorized');
      });
    });

    group('DecodingError', () {
      test('emits when onResponse throws', () async {
        final charlatan = Charlatan();
        final events = <(RequestOptions, Exception, StackTrace?)>[];

        charlatan.whenGet(
          '/test',
          (request) => CharlatanHttpResponse(body: {'data': 'value'}),
        );

        final client = SturdyHttp(
          baseUrl: 'http://example.com',
          customAdapter: charlatan.toFakeHttpClientAdapter(),
          eventListener: _TestEventListener(
            onDecodingError: (request, exception, stackTrace) {
              events.add((request, exception, stackTrace));
            },
          ),
        );

        await expectLater(
          () => client.execute<Json, void>(
            const GetRequest('/test'),
            onResponse: (_) => throw Exception('Decoding failed'),
          ),
          throwsException,
        );

        expect(events, hasLength(1));
        expect(events.first.$1.path, '/test');
        expect(events.first.$2.toString(), contains('Decoding failed'));
      });
    });
  });
}

class _TestEventListener extends SturdyHttpEventListener {
  final void Function(RequestCompleted)? onRequestCompleted;
  final void Function(RequestOptions)? onAuthFailure;
  final void Function(RequestOptions, Exception, StackTrace?)? onDecodingError;

  _TestEventListener({
    this.onRequestCompleted,
    this.onAuthFailure,
    this.onDecodingError,
  });

  @override
  Future<void> onEvent(SturdyHttpEvent event) async {
    switch (event) {
      case RequestCompleted():
        onRequestCompleted?.call(event);
      case AuthFailure(:final request):
        onAuthFailure?.call(request);
      case DecodingError(:final request, :final exception, :final stackTrace):
        onDecodingError?.call(request, exception, stackTrace);
    }
  }
}
