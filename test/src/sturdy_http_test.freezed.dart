// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sturdy_http_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<S, F> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<S, F> value) success,
    required TResult Function(_Failure<S, F> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<S, F> value)? success,
    TResult? Function(_Failure<S, F> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F> value)? success,
    TResult Function(_Failure<S, F> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<S, F, $Res> {
  factory $ResultCopyWith(
          Result<S, F> value, $Res Function(Result<S, F>) then) =
      _$ResultCopyWithImpl<S, F, $Res, Result<S, F>>;
}

/// @nodoc
class _$ResultCopyWithImpl<S, F, $Res, $Val extends Result<S, F>>
    implements $ResultCopyWith<S, F, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<S, F, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<S, F> value, $Res Function(_$_Success<S, F>) then) =
      __$$_SuccessCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({S success});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$_Success<S, F>>
    implements _$$_SuccessCopyWith<S, F, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<S, F> _value, $Res Function(_$_Success<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$_Success<S, F>(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$_Success<S, F> implements _Success<S, F> {
  const _$_Success(this.success);

  @override
  final S success;

  @override
  String toString() {
    return 'Result<$S, $F>.success(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<S, F> &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<S, F, _$_Success<S, F>> get copyWith =>
      __$$_SuccessCopyWithImpl<S, F, _$_Success<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<S, F> value) success,
    required TResult Function(_Failure<S, F> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<S, F> value)? success,
    TResult? Function(_Failure<S, F> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F> value)? success,
    TResult Function(_Failure<S, F> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<S, F> implements Result<S, F> {
  const factory _Success(final S success) = _$_Success<S, F>;

  S get success;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<S, F, _$_Success<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<S, F, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<S, F> value, $Res Function(_$_Failure<S, F>) then) =
      __$$_FailureCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$_Failure<S, F>>
    implements _$$_FailureCopyWith<S, F, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<S, F> _value, $Res Function(_$_Failure<S, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failure<S, F>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$_Failure<S, F> implements _Failure<S, F> {
  const _$_Failure(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'Result<$S, $F>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<S, F> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<S, F, _$_Failure<S, F>> get copyWith =>
      __$$_FailureCopyWithImpl<S, F, _$_Failure<S, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(S success) success,
    required TResult Function(F failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(S success)? success,
    TResult? Function(F failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(S success)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<S, F> value) success,
    required TResult Function(_Failure<S, F> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<S, F> value)? success,
    TResult? Function(_Failure<S, F> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<S, F> value)? success,
    TResult Function(_Failure<S, F> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<S, F> implements Result<S, F> {
  const factory _Failure(final F failure) = _$_Failure<S, F>;

  F get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<S, F, _$_Failure<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

Foo _$FooFromJson(Map<String, dynamic> json) {
  return _Foo.fromJson(json);
}

/// @nodoc
mixin _$Foo {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FooCopyWith<Foo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooCopyWith<$Res> {
  factory $FooCopyWith(Foo value, $Res Function(Foo) then) =
      _$FooCopyWithImpl<$Res, Foo>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FooCopyWithImpl<$Res, $Val extends Foo> implements $FooCopyWith<$Res> {
  _$FooCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FooCopyWith<$Res> implements $FooCopyWith<$Res> {
  factory _$$_FooCopyWith(_$_Foo value, $Res Function(_$_Foo) then) =
      __$$_FooCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FooCopyWithImpl<$Res> extends _$FooCopyWithImpl<$Res, _$_Foo>
    implements _$$_FooCopyWith<$Res> {
  __$$_FooCopyWithImpl(_$_Foo _value, $Res Function(_$_Foo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Foo(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Foo implements _Foo {
  const _$_Foo({required this.message});

  factory _$_Foo.fromJson(Map<String, dynamic> json) => _$$_FooFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'Foo(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Foo &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FooCopyWith<_$_Foo> get copyWith =>
      __$$_FooCopyWithImpl<_$_Foo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FooToJson(
      this,
    );
  }
}

abstract class _Foo implements Foo {
  const factory _Foo({required final String message}) = _$_Foo;

  factory _Foo.fromJson(Map<String, dynamic> json) = _$_Foo.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FooCopyWith<_$_Foo> get copyWith => throw _privateConstructorUsedError;
}

NotFoo _$NotFooFromJson(Map<String, dynamic> json) {
  return _NotFoo.fromJson(json);
}

/// @nodoc
mixin _$NotFoo {
  String get notMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotFooCopyWith<NotFoo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotFooCopyWith<$Res> {
  factory $NotFooCopyWith(NotFoo value, $Res Function(NotFoo) then) =
      _$NotFooCopyWithImpl<$Res, NotFoo>;
  @useResult
  $Res call({String notMessage});
}

/// @nodoc
class _$NotFooCopyWithImpl<$Res, $Val extends NotFoo>
    implements $NotFooCopyWith<$Res> {
  _$NotFooCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notMessage = null,
  }) {
    return _then(_value.copyWith(
      notMessage: null == notMessage
          ? _value.notMessage
          : notMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotFooCopyWith<$Res> implements $NotFooCopyWith<$Res> {
  factory _$$_NotFooCopyWith(_$_NotFoo value, $Res Function(_$_NotFoo) then) =
      __$$_NotFooCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String notMessage});
}

/// @nodoc
class __$$_NotFooCopyWithImpl<$Res>
    extends _$NotFooCopyWithImpl<$Res, _$_NotFoo>
    implements _$$_NotFooCopyWith<$Res> {
  __$$_NotFooCopyWithImpl(_$_NotFoo _value, $Res Function(_$_NotFoo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notMessage = null,
  }) {
    return _then(_$_NotFoo(
      notMessage: null == notMessage
          ? _value.notMessage
          : notMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotFoo implements _NotFoo {
  const _$_NotFoo({required this.notMessage});

  factory _$_NotFoo.fromJson(Map<String, dynamic> json) =>
      _$$_NotFooFromJson(json);

  @override
  final String notMessage;

  @override
  String toString() {
    return 'NotFoo(notMessage: $notMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoo &&
            (identical(other.notMessage, notMessage) ||
                other.notMessage == notMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFooCopyWith<_$_NotFoo> get copyWith =>
      __$$_NotFooCopyWithImpl<_$_NotFoo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotFooToJson(
      this,
    );
  }
}

abstract class _NotFoo implements NotFoo {
  const factory _NotFoo({required final String notMessage}) = _$_NotFoo;

  factory _NotFoo.fromJson(Map<String, dynamic> json) = _$_NotFoo.fromJson;

  @override
  String get notMessage;
  @override
  @JsonKey(ignore: true)
  _$$_NotFooCopyWith<_$_NotFoo> get copyWith =>
      throw _privateConstructorUsedError;
}
