import 'package:dio/dio.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart';

void main() {
  group('NetworkResponse', () {
    test('it has a meaningful toString implementation', () {
      final subject = GenericError(
        message: 'Oh no! Something went wrong',
        isConnectionIssue: true,
        error: DioException(
          type: DioExceptionType.unknown,
          requestOptions: RequestOptions(path: 'https://example.com'),
          message: 'Blah blah blah',
          response: Response(
            requestOptions: RequestOptions(path: 'https://example.com'),
            statusCode: 500,
            statusMessage: 'Internal Server Error',
          ),
        ),
      );

      expect(
        subject.toString(),
        'GenericError<dynamic>(DioException [unknown]: Blah blah blah, Oh no! Something went wrong, true)',
      );
    });
  });
}
