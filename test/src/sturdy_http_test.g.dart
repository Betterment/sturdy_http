// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sturdy_http_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooImpl _$$FooImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$FooImpl',
      json,
      ($checkedConvert) {
        final val = _$FooImpl(
          message: $checkedConvert('message', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FooImplToJson(_$FooImpl instance) => <String, dynamic>{
      'message': instance.message,
    };

_$NotFooImpl _$$NotFooImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$NotFooImpl',
      json,
      ($checkedConvert) {
        final val = _$NotFooImpl(
          notMessage: $checkedConvert('not_message', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'notMessage': 'not_message'},
    );

Map<String, dynamic> _$$NotFooImplToJson(_$NotFooImpl instance) =>
    <String, dynamic>{
      'not_message': instance.notMessage,
    };
