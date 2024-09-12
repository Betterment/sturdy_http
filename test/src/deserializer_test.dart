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

      final response = OkResponse(const Foo(message: '--').toJson());
      final subject = BackgroundDeserializer();
      final result = await subject.deserialize(
        response: response,
        onResponse: onResponse,
      );
      expect(result.message, 'sturdyHttpWorkerIsolate');
    });

    test('it handles multiple requests for deserialization', () async {
      Foo onResponse(NetworkResponse<Json> response) {
        return switch (response) {
          OkResponse<Json>(:final response) => Foo.fromJson(response),
          _ => fail('Not expected: orElse'),
        };
      }

      final responseOne = OkResponse(const Foo(message: '1').toJson());
      final responseTwo = OkResponse(const Foo(message: '2').toJson());
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
        return switch (response) {
          OkResponse<Json>(:final response) => NotFoo.fromJson(response),
          _ => fail('orElse not expected'),
        };
      }

      final response = OkResponse(const Foo(message: 'Nope').toJson());
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
