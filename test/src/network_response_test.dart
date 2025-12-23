import 'package:dio/dio.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart';

void main() {
  group('NetworkResponse toString', () {
    group('success types', () {
      test('OkNoContent', () {
        const response = OkNoContent<void>();

        expect(response.toString(), 'OkNoContent()');
      });

      test('OkResponse', () {
        const response = OkResponse<String>('success data');

        expect(response.toString(), 'OkResponse(response: success data)');
      });
    });

    group('failure types', () {
      late DioException dioException;

      setUp(() {
        dioException = DioException(
          requestOptions: RequestOptions(path: '/test'),
          message: 'Test error message',
          type: DioExceptionType.badResponse,
        );
      });

      test('Unauthorized', () {
        final response = Unauthorized<void>(error: dioException);

        expect(
          response.toString(),
          'Unauthorized(error: DioException [bad response]: Test error message)',
        );
      });

      test('Forbidden', () {
        final response = Forbidden<void>(error: dioException);

        expect(
          response.toString(),
          'Forbidden(error: DioException [bad response]: Test error message)',
        );
      });

      test('NotFound', () {
        final response = NotFound<void>(error: dioException);

        expect(
          response.toString(),
          'NotFound(error: DioException [bad response]: Test error message)',
        );
      });

      test('UnprocessableEntity', () {
        final response = UnprocessableEntity<Map<String, dynamic>>(
          error: dioException,
          response: {'field': 'email', 'message': 'is invalid'},
        );

        expect(
          response.toString(),
          'UnprocessableEntity(error: DioException [bad response]: Test error message, response: {field: email, message: is invalid})',
        );
      });

      test('UpgradeRequired', () {
        final response = UpgradeRequired<void>(error: dioException);

        expect(
          response.toString(),
          'UpgradeRequired(error: DioException [bad response]: Test error message)',
        );
      });

      test('ServerError', () {
        final response = ServerError<void>(error: dioException);

        expect(
          response.toString(),
          'ServerError(error: DioException [bad response]: Test error message)',
        );
      });

      test('ServiceUnavailable', () {
        final response = ServiceUnavailable<void>(error: dioException);

        expect(
          response.toString(),
          'ServiceUnavailable(error: DioException [bad response]: Test error message)',
        );
      });

      test('GenericError', () {
        final response = GenericError<void>(
          error: dioException,
          message: 'Something went wrong',
          isConnectionIssue: false,
        );

        expect(
          response.toString(),
          'GenericError(error: DioException [bad response]: Test error message, message: Something went wrong, isConnectionIssue: false)',
        );
      });

      test('GenericError with null error', () {
        const response = GenericError<void>(
          error: null,
          message: 'Connection timeout',
          isConnectionIssue: true,
        );

        expect(
          response.toString(),
          'GenericError(error: null, message: Connection timeout, isConnectionIssue: true)',
        );
      });
    });
  });
}
