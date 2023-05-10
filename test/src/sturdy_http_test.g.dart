// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sturdy_http_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Foo _$$_FooFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Foo',
      json,
      ($checkedConvert) {
        final val = _$_Foo(
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FooToJson(_$_Foo instance) => <String, dynamic>{
      'message': instance.message,
    };

_$_NotFoo _$$_NotFooFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_NotFoo',
      json,
      ($checkedConvert) {
        final val = _$_NotFoo(
          notMessage: $checkedConvert('not_message', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'notMessage': 'not_message'},
    );

Map<String, dynamic> _$$_NotFooToJson(_$_NotFoo instance) => <String, dynamic>{
      'not_message': instance.notMessage,
    };
