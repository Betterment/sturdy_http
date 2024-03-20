import 'package:dio/dio.dart';
import 'package:sturdy_http/src/retry_behavior.dart';
import 'package:test/test.dart' hide Retry;

void main() {
  group('RetryBehavior', () {
    test('Unspecified never retries', () {
      final unspecified = const Unspecified();

      expect(
        unspecified.shouldRetry(
          Response(
            requestOptions: RequestOptions(),
            statusCode: defaultRetryStatusCodes.first,
          ),
          1,
        ),
        isFalse,
      );
    });
    test('NeverRetry never retries', () {
      final neverRetry = const NeverRetry();

      expect(
        neverRetry.shouldRetry(
          Response(
            requestOptions: RequestOptions(),
            statusCode: defaultRetryStatusCodes.first,
          ),
          1,
        ),
        isFalse,
      );
    });
    group('Retry', () {
      test('maxRetries is respected', () {
        final retry = const Retry(
          maxRetries: 1,
          retryInterval: Duration.zero,
        );

        expect(
          retry.shouldRetry(
            Response(
              requestOptions: RequestOptions(),
              statusCode: defaultRetryStatusCodes.first,
            ),
            0,
          ),
          isTrue,
        );

        expect(
          retry.shouldRetry(
            Response(
              requestOptions: RequestOptions(),
              statusCode: defaultRetryStatusCodes.first,
            ),
            1,
          ),
          isFalse,
        );
      });

      test('retryClause is respected', () {
        final retry = Retry(
          maxRetries: 100,
          retryInterval: Duration.zero,
          retryClause: (r) => false,
        );

        expect(
          retry.shouldRetry(
            Response(
              requestOptions: RequestOptions(),
              statusCode: defaultRetryStatusCodes.first,
            ),
            1,
          ),
          isFalse,
        );
      });
    });
  });
}
