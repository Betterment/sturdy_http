// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sturdy_http_test.dart';

class FooMapper extends ClassMapperBase<Foo> {
  FooMapper._();

  static FooMapper? _instance;
  static FooMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FooMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Foo';

  static String _$message(Foo v) => v.message;
  static const Field<Foo, String> _f$message = Field('message', _$message);

  @override
  final MappableFields<Foo> fields = const {#message: _f$message};

  static Foo _instantiate(DecodingData data) {
    return Foo(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static Foo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Foo>(map);
  }

  static Foo fromJson(String json) {
    return ensureInitialized().decodeJson<Foo>(json);
  }
}

mixin FooMappable {
  String toJson() {
    return FooMapper.ensureInitialized().encodeJson<Foo>(this as Foo);
  }

  Map<String, dynamic> toMap() {
    return FooMapper.ensureInitialized().encodeMap<Foo>(this as Foo);
  }

  FooCopyWith<Foo, Foo, Foo> get copyWith =>
      _FooCopyWithImpl<Foo, Foo>(this as Foo, $identity, $identity);
  @override
  String toString() {
    return FooMapper.ensureInitialized().stringifyValue(this as Foo);
  }

  @override
  bool operator ==(Object other) {
    return FooMapper.ensureInitialized().equalsValue(this as Foo, other);
  }

  @override
  int get hashCode {
    return FooMapper.ensureInitialized().hashValue(this as Foo);
  }
}

extension FooValueCopy<$R, $Out> on ObjectCopyWith<$R, Foo, $Out> {
  FooCopyWith<$R, Foo, $Out> get $asFoo =>
      $base.as((v, t, t2) => _FooCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FooCopyWith<$R, $In extends Foo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message});
  FooCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FooCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Foo, $Out>
    implements FooCopyWith<$R, Foo, $Out> {
  _FooCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Foo> $mapper = FooMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  Foo $make(CopyWithData data) =>
      Foo(message: data.get(#message, or: $value.message));

  @override
  FooCopyWith<$R2, Foo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FooCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class NotFooMapper extends ClassMapperBase<NotFoo> {
  NotFooMapper._();

  static NotFooMapper? _instance;
  static NotFooMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotFooMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NotFoo';

  static String _$notMessage(NotFoo v) => v.notMessage;
  static const Field<NotFoo, String> _f$notMessage = Field(
    'notMessage',
    _$notMessage,
  );

  @override
  final MappableFields<NotFoo> fields = const {#notMessage: _f$notMessage};

  static NotFoo _instantiate(DecodingData data) {
    return NotFoo(notMessage: data.dec(_f$notMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static NotFoo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NotFoo>(map);
  }

  static NotFoo fromJson(String json) {
    return ensureInitialized().decodeJson<NotFoo>(json);
  }
}

mixin NotFooMappable {
  String toJson() {
    return NotFooMapper.ensureInitialized().encodeJson<NotFoo>(this as NotFoo);
  }

  Map<String, dynamic> toMap() {
    return NotFooMapper.ensureInitialized().encodeMap<NotFoo>(this as NotFoo);
  }

  NotFooCopyWith<NotFoo, NotFoo, NotFoo> get copyWith =>
      _NotFooCopyWithImpl<NotFoo, NotFoo>(this as NotFoo, $identity, $identity);
  @override
  String toString() {
    return NotFooMapper.ensureInitialized().stringifyValue(this as NotFoo);
  }

  @override
  bool operator ==(Object other) {
    return NotFooMapper.ensureInitialized().equalsValue(this as NotFoo, other);
  }

  @override
  int get hashCode {
    return NotFooMapper.ensureInitialized().hashValue(this as NotFoo);
  }
}

extension NotFooValueCopy<$R, $Out> on ObjectCopyWith<$R, NotFoo, $Out> {
  NotFooCopyWith<$R, NotFoo, $Out> get $asNotFoo =>
      $base.as((v, t, t2) => _NotFooCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class NotFooCopyWith<$R, $In extends NotFoo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? notMessage});
  NotFooCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotFooCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, NotFoo, $Out>
    implements NotFooCopyWith<$R, NotFoo, $Out> {
  _NotFooCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotFoo> $mapper = NotFooMapper.ensureInitialized();
  @override
  $R call({String? notMessage}) => $apply(
    FieldCopyWithData({if (notMessage != null) #notMessage: notMessage}),
  );
  @override
  NotFoo $make(CopyWithData data) =>
      NotFoo(notMessage: data.get(#notMessage, or: $value.notMessage));

  @override
  NotFooCopyWith<$R2, NotFoo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _NotFooCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

