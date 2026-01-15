import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart';

void main() {
  group('NetworkRequest', () {
    group('shouldTriggerDataMutation defaults', () {
      test('GetRequest defaults to false', () {
        const request = GetRequest('/path');
        expect(request.shouldTriggerDataMutation, isFalse);
      });

      test('PostRequest defaults to true', () {
        final request = PostRequest('/path', data: JsonRequestBody({}));
        expect(request.shouldTriggerDataMutation, isTrue);
      });

      test('PutRequest defaults to true', () {
        final request = PutRequest('/path', data: JsonRequestBody({}));
        expect(request.shouldTriggerDataMutation, isTrue);
      });

      test('DeleteRequest defaults to true', () {
        const request = DeleteRequest('/path');
        expect(request.shouldTriggerDataMutation, isTrue);
      });

      test('RawRequest defaults to true', () {
        const request = RawRequest('/path', type: NetworkRequestType.Post);
        expect(request.shouldTriggerDataMutation, isTrue);
      });
    });
  });
}
