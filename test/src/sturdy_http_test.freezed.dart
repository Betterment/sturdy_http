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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<S, F, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<S, F> value, $Res Function(_$SuccessImpl<S, F>) then) =
      __$$SuccessImplCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({S success});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$SuccessImpl<S, F>>
    implements _$$SuccessImplCopyWith<S, F, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<S, F> _value, $Res Function(_$SuccessImpl<S, F>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$SuccessImpl<S, F>(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<S, F> implements _Success<S, F> {
  const _$SuccessImpl(this.success);

  @override
  final S success;

  @override
  String toString() {
    return 'Result<$S, $F>.success(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<S, F> &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<S, F, _$SuccessImpl<S, F>> get copyWith =>
      __$$SuccessImplCopyWithImpl<S, F, _$SuccessImpl<S, F>>(this, _$identity);

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
  const factory _Success(final S success) = _$SuccessImpl<S, F>;

  S get success;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<S, F, _$SuccessImpl<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<S, F, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<S, F> value, $Res Function(_$FailureImpl<S, F>) then) =
      __$$FailureImplCopyWithImpl<S, F, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<S, F, $Res>
    extends _$ResultCopyWithImpl<S, F, $Res, _$FailureImpl<S, F>>
    implements _$$FailureImplCopyWith<S, F, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<S, F> _value, $Res Function(_$FailureImpl<S, F>) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$FailureImpl<S, F>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$FailureImpl<S, F> implements _Failure<S, F> {
  const _$FailureImpl(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'Result<$S, $F>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<S, F> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<S, F, _$FailureImpl<S, F>> get copyWith =>
      __$$FailureImplCopyWithImpl<S, F, _$FailureImpl<S, F>>(this, _$identity);

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
  const factory _Failure(final F failure) = _$FailureImpl<S, F>;

  F get failure;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<S, F, _$FailureImpl<S, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

Foo _$FooFromJson(Map<String, dynamic> json) {
  return _Foo.fromJson(json);
}

/// @nodoc
mixin _$Foo {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this Foo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$FooImplCopyWith<$Res> implements $FooCopyWith<$Res> {
  factory _$$FooImplCopyWith(_$FooImpl value, $Res Function(_$FooImpl) then) =
      __$$FooImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FooImplCopyWithImpl<$Res> extends _$FooCopyWithImpl<$Res, _$FooImpl>
    implements _$$FooImplCopyWith<$Res> {
  __$$FooImplCopyWithImpl(_$FooImpl _value, $Res Function(_$FooImpl) _then)
      : super(_value, _then);

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FooImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooImpl implements _Foo {
  const _$FooImpl({required this.message});

  factory _$FooImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'Foo(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooImplCopyWith<_$FooImpl> get copyWith =>
      __$$FooImplCopyWithImpl<_$FooImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooImplToJson(
      this,
    );
  }
}

abstract class _Foo implements Foo {
  const factory _Foo({required final String message}) = _$FooImpl;

  factory _Foo.fromJson(Map<String, dynamic> json) = _$FooImpl.fromJson;

  @override
  String get message;

  /// Create a copy of Foo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooImplCopyWith<_$FooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotFoo _$NotFooFromJson(Map<String, dynamic> json) {
  return _NotFoo.fromJson(json);
}

/// @nodoc
mixin _$NotFoo {
  String get notMessage => throw _privateConstructorUsedError;

  /// Serializes this NotFoo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotFoo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of NotFoo
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$NotFooImplCopyWith<$Res> implements $NotFooCopyWith<$Res> {
  factory _$$NotFooImplCopyWith(
          _$NotFooImpl value, $Res Function(_$NotFooImpl) then) =
      __$$NotFooImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String notMessage});
}

/// @nodoc
class __$$NotFooImplCopyWithImpl<$Res>
    extends _$NotFooCopyWithImpl<$Res, _$NotFooImpl>
    implements _$$NotFooImplCopyWith<$Res> {
  __$$NotFooImplCopyWithImpl(
      _$NotFooImpl _value, $Res Function(_$NotFooImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotFoo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notMessage = null,
  }) {
    return _then(_$NotFooImpl(
      notMessage: null == notMessage
          ? _value.notMessage
          : notMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotFooImpl implements _NotFoo {
  const _$NotFooImpl({required this.notMessage});

  factory _$NotFooImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFooImplFromJson(json);

  @override
  final String notMessage;

  @override
  String toString() {
    return 'NotFoo(notMessage: $notMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFooImpl &&
            (identical(other.notMessage, notMessage) ||
                other.notMessage == notMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, notMessage);

  /// Create a copy of NotFoo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFooImplCopyWith<_$NotFooImpl> get copyWith =>
      __$$NotFooImplCopyWithImpl<_$NotFooImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFooImplToJson(
      this,
    );
  }
}

abstract class _NotFoo implements NotFoo {
  const factory _NotFoo({required final String notMessage}) = _$NotFooImpl;

  factory _NotFoo.fromJson(Map<String, dynamic> json) = _$NotFooImpl.fromJson;

  @override
  String get notMessage;

  /// Create a copy of NotFoo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFooImplCopyWith<_$NotFooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
