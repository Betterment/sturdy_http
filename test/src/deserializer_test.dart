// ignore_for_file: avoid_types_on_closure_parameters

import 'dart:isolate';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sturdy_http/sturdy_http.dart';
import 'package:test/test.dart';

import 'sturdy_http_test.dart';

void main() {
  group('BackgroundDeserializer', () {
    test('it invokes onResponse on a non-main Isolate and sends result back', () async {
      onResponse(NetworkResponse<Json> response) {
        final isolateName = Isolate.current.debugName;
        // Hijack `Foo` to send over the `IsolateName` since
        // isolates don't share memory (so we can't set a late
        // field that lives outside this isolate function
        // scope)
        return Foo(message: isolateName!);
      }

      final response = NetworkResponse.ok(const Foo(message: '--').toJson());
      final subject = BackgroundDeserializer();
      final result = await subject.deserialize(
        response: response,
        onResponse: onResponse,
      );
      expect(result.message, 'sturdyHttpWorkerIsolate');
    });

    test('it handles multiple requests for deserialization', () async {
      onResponse(NetworkResponse<Json> response) {
        return response.maybeWhen(
          ok: Foo.fromJson,
          orElse: () => fail('orElse not expected'),
        );
      }

      final responseOne = NetworkResponse.ok(const Foo(message: '1').toJson());
      final responseTwo = NetworkResponse.ok(const Foo(message: '2').toJson());
      final subject = BackgroundDeserializer();
      final resultOne = await subject.deserialize(
        response: responseOne,
        onResponse: onResponse,
      );
      final resultTwo = await subject.deserialize(
        response: responseTwo,
        onResponse: onResponse,
      );
      expect(resultOne.message, '1');
      expect(resultTwo.message, '2');
    });

    test('it throws CheckedFromJsonExceptions when deserialization issues occur', () async {
      onResponse(NetworkResponse<Json> response) {
        return response.maybeWhen(
          // Attempt to deserialize will fail because the response
          // payload is a `Foo`, not a `NotFoo`
          ok: NotFoo.fromJson,
          orElse: () => fail('orElse not expected'),
        );
      }

      final response = NetworkResponse.ok(const Foo(message: 'Nope').toJson());
      final subject = BackgroundDeserializer();
      try {
        await subject.deserialize(
          response: response,
          onResponse: onResponse,
        );
      } on Exception catch (e) {
        expect(e, isA<CheckedFromJsonException>());
      }
    });
  });
}
