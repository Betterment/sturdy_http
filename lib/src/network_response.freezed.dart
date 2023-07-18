// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResponse<R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<R, $Res> {
  factory $NetworkResponseCopyWith(
          NetworkResponse<R> value, $Res Function(NetworkResponse<R>) then) =
      _$NetworkResponseCopyWithImpl<R, $Res, NetworkResponse<R>>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<R, $Res, $Val extends NetworkResponse<R>>
    implements $NetworkResponseCopyWith<R, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OkCopyWith<R, $Res> {
  factory _$$_OkCopyWith(_$_Ok<R> value, $Res Function(_$_Ok<R>) then) =
      __$$_OkCopyWithImpl<R, $Res>;
  @useResult
  $Res call({R response});
}

/// @nodoc
class __$$_OkCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_Ok<R>>
    implements _$$_OkCopyWith<R, $Res> {
  __$$_OkCopyWithImpl(_$_Ok<R> _value, $Res Function(_$_Ok<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_Ok<R>(
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$_Ok<R> implements _Ok<R> {
  const _$_Ok(this.response);

  @override
  final R response;

  @override
  String toString() {
    return 'NetworkResponse<$R>.ok(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ok<R> &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OkCopyWith<R, _$_Ok<R>> get copyWith =>
      __$$_OkCopyWithImpl<R, _$_Ok<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return ok(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return ok?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _Ok<R> implements NetworkResponse<R> {
  const factory _Ok(final R response) = _$_Ok<R>;

  R get response;
  @JsonKey(ignore: true)
  _$$_OkCopyWith<R, _$_Ok<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OkNoContentCopyWith<R, $Res> {
  factory _$$_OkNoContentCopyWith(
          _$_OkNoContent<R> value, $Res Function(_$_OkNoContent<R>) then) =
      __$$_OkNoContentCopyWithImpl<R, $Res>;
}

/// @nodoc
class __$$_OkNoContentCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_OkNoContent<R>>
    implements _$$_OkNoContentCopyWith<R, $Res> {
  __$$_OkNoContentCopyWithImpl(
      _$_OkNoContent<R> _value, $Res Function(_$_OkNoContent<R>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OkNoContent<R> implements _OkNoContent<R> {
  const _$_OkNoContent();

  @override
  String toString() {
    return 'NetworkResponse<$R>.okNoContent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OkNoContent<R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return okNoContent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return okNoContent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (okNoContent != null) {
      return okNoContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return okNoContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return okNoContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (okNoContent != null) {
      return okNoContent(this);
    }
    return orElse();
  }
}

abstract class _OkNoContent<R> implements NetworkResponse<R> {
  const factory _OkNoContent() = _$_OkNoContent<R>;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<R, $Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized<R> value, $Res Function(_$_Unauthorized<R>) then) =
      __$$_UnauthorizedCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_Unauthorized<R>>
    implements _$$_UnauthorizedCopyWith<R, $Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized<R> _value, $Res Function(_$_Unauthorized<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Unauthorized<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$_Unauthorized<R> implements _Unauthorized<R> {
  const _$_Unauthorized(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.unauthorized(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthorized<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthorizedCopyWith<R, _$_Unauthorized<R>> get copyWith =>
      __$$_UnauthorizedCopyWithImpl<R, _$_Unauthorized<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return unauthorized(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return unauthorized?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized<R> implements NetworkResponse<R> {
  const factory _Unauthorized(final DioException error) = _$_Unauthorized<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$_UnauthorizedCopyWith<R, _$_Unauthorized<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForbiddenCopyWith<R, $Res> {
  factory _$$_ForbiddenCopyWith(
          _$_Forbidden<R> value, $Res Function(_$_Forbidden<R>) then) =
      __$$_ForbiddenCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$_ForbiddenCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_Forbidden<R>>
    implements _$$_ForbiddenCopyWith<R, $Res> {
  __$$_ForbiddenCopyWithImpl(
      _$_Forbidden<R> _value, $Res Function(_$_Forbidden<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Forbidden<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$_Forbidden<R> implements _Forbidden<R> {
  const _$_Forbidden(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.forbidden(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Forbidden<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForbiddenCopyWith<R, _$_Forbidden<R>> get copyWith =>
      __$$_ForbiddenCopyWithImpl<R, _$_Forbidden<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return forbidden(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return forbidden?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbidden<R> implements NetworkResponse<R> {
  const factory _Forbidden(final DioException error) = _$_Forbidden<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$_ForbiddenCopyWith<R, _$_Forbidden<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundCopyWith<R, $Res> {
  factory _$$_NotFoundCopyWith(
          _$_NotFound<R> value, $Res Function(_$_NotFound<R>) then) =
      __$$_NotFoundCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$_NotFoundCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_NotFound<R>>
    implements _$$_NotFoundCopyWith<R, $Res> {
  __$$_NotFoundCopyWithImpl(
      _$_NotFound<R> _value, $Res Function(_$_NotFound<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_NotFound<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$_NotFound<R> implements _NotFound<R> {
  const _$_NotFound(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.notFound(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFound<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundCopyWith<R, _$_NotFound<R>> get copyWith =>
      __$$_NotFoundCopyWithImpl<R, _$_NotFound<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return notFound(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return notFound?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound<R> implements NetworkResponse<R> {
  const factory _NotFound(final DioException error) = _$_NotFound<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$_NotFoundCopyWith<R, _$_NotFound<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnprocessableEntityCopyWith<R, $Res> {
  factory _$$_UnprocessableEntityCopyWith(_$_UnprocessableEntity<R> value,
          $Res Function(_$_UnprocessableEntity<R>) then) =
      __$$_UnprocessableEntityCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error, R response});
}

/// @nodoc
class __$$_UnprocessableEntityCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_UnprocessableEntity<R>>
    implements _$$_UnprocessableEntityCopyWith<R, $Res> {
  __$$_UnprocessableEntityCopyWithImpl(_$_UnprocessableEntity<R> _value,
      $Res Function(_$_UnprocessableEntity<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? response = freezed,
  }) {
    return _then(_$_UnprocessableEntity<R>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$_UnprocessableEntity<R> implements _UnprocessableEntity<R> {
  const _$_UnprocessableEntity({required this.error, required this.response});

  @override
  final DioException error;
  @override
  final R response;

  @override
  String toString() {
    return 'NetworkResponse<$R>.unprocessableEntity(error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnprocessableEntity<R> &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnprocessableEntityCopyWith<R, _$_UnprocessableEntity<R>> get copyWith =>
      __$$_UnprocessableEntityCopyWithImpl<R, _$_UnprocessableEntity<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return unprocessableEntity(error, response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return unprocessableEntity?.call(error, response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(error, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntity<R> implements NetworkResponse<R> {
  const factory _UnprocessableEntity(
      {required final DioException error,
      required final R response}) = _$_UnprocessableEntity<R>;

  DioException get error;
  R get response;
  @JsonKey(ignore: true)
  _$$_UnprocessableEntityCopyWith<R, _$_UnprocessableEntity<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<R, $Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError<R> value, $Res Function(_$_ServerError<R>) then) =
      __$$_ServerErrorCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_ServerError<R>>
    implements _$$_ServerErrorCopyWith<R, $Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError<R> _value, $Res Function(_$_ServerError<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ServerError<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$_ServerError<R> implements _ServerError<R> {
  const _$_ServerError(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<R, _$_ServerError<R>> get copyWith =>
      __$$_ServerErrorCopyWithImpl<R, _$_ServerError<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError<R> implements NetworkResponse<R> {
  const factory _ServerError(final DioException error) = _$_ServerError<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<R, _$_ServerError<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServiceUnavailableCopyWith<R, $Res> {
  factory _$$_ServiceUnavailableCopyWith(_$_ServiceUnavailable<R> value,
          $Res Function(_$_ServiceUnavailable<R>) then) =
      __$$_ServiceUnavailableCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$_ServiceUnavailableCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_ServiceUnavailable<R>>
    implements _$$_ServiceUnavailableCopyWith<R, $Res> {
  __$$_ServiceUnavailableCopyWithImpl(_$_ServiceUnavailable<R> _value,
      $Res Function(_$_ServiceUnavailable<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ServiceUnavailable<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$_ServiceUnavailable<R> implements _ServiceUnavailable<R> {
  const _$_ServiceUnavailable(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.serviceUnavailable(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceUnavailable<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceUnavailableCopyWith<R, _$_ServiceUnavailable<R>> get copyWith =>
      __$$_ServiceUnavailableCopyWithImpl<R, _$_ServiceUnavailable<R>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return serviceUnavailable(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return serviceUnavailable?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class _ServiceUnavailable<R> implements NetworkResponse<R> {
  const factory _ServiceUnavailable(final DioException error) =
      _$_ServiceUnavailable<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$_ServiceUnavailableCopyWith<R, _$_ServiceUnavailable<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenericErrorCopyWith<R, $Res> {
  factory _$$_GenericErrorCopyWith(
          _$_GenericError<R> value, $Res Function(_$_GenericError<R>) then) =
      __$$_GenericErrorCopyWithImpl<R, $Res>;
  @useResult
  $Res call({String message, bool isConnectionIssue, DioException? error});
}

/// @nodoc
class __$$_GenericErrorCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$_GenericError<R>>
    implements _$$_GenericErrorCopyWith<R, $Res> {
  __$$_GenericErrorCopyWithImpl(
      _$_GenericError<R> _value, $Res Function(_$_GenericError<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isConnectionIssue = null,
    Object? error = freezed,
  }) {
    return _then(_$_GenericError<R>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isConnectionIssue: null == isConnectionIssue
          ? _value.isConnectionIssue
          : isConnectionIssue // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException?,
    ));
  }
}

/// @nodoc

class _$_GenericError<R> implements _GenericError<R> {
  const _$_GenericError(
      {required this.message, required this.isConnectionIssue, this.error});

  @override
  final String message;
  @override
  final bool isConnectionIssue;
  @override
  final DioException? error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.genericError(message: $message, isConnectionIssue: $isConnectionIssue, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericError<R> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isConnectionIssue, isConnectionIssue) ||
                other.isConnectionIssue == isConnectionIssue) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, isConnectionIssue, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericErrorCopyWith<R, _$_GenericError<R>> get copyWith =>
      __$$_GenericErrorCopyWithImpl<R, _$_GenericError<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) ok,
    required TResult Function() okNoContent,
    required TResult Function(DioException error) unauthorized,
    required TResult Function(DioException error) forbidden,
    required TResult Function(DioException error) notFound,
    required TResult Function(DioException error, R response)
        unprocessableEntity,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return genericError(message, isConnectionIssue, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(R response)? ok,
    TResult? Function()? okNoContent,
    TResult? Function(DioException error)? unauthorized,
    TResult? Function(DioException error)? forbidden,
    TResult? Function(DioException error)? notFound,
    TResult? Function(DioException error, R response)? unprocessableEntity,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return genericError?.call(message, isConnectionIssue, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? ok,
    TResult Function()? okNoContent,
    TResult Function(DioException error)? unauthorized,
    TResult Function(DioException error)? forbidden,
    TResult Function(DioException error)? notFound,
    TResult Function(DioException error, R response)? unprocessableEntity,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (genericError != null) {
      return genericError(message, isConnectionIssue, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ok<R> value) ok,
    required TResult Function(_OkNoContent<R> value) okNoContent,
    required TResult Function(_Unauthorized<R> value) unauthorized,
    required TResult Function(_Forbidden<R> value) forbidden,
    required TResult Function(_NotFound<R> value) notFound,
    required TResult Function(_UnprocessableEntity<R> value)
        unprocessableEntity,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return genericError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ok<R> value)? ok,
    TResult? Function(_OkNoContent<R> value)? okNoContent,
    TResult? Function(_Unauthorized<R> value)? unauthorized,
    TResult? Function(_Forbidden<R> value)? forbidden,
    TResult? Function(_NotFound<R> value)? notFound,
    TResult? Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return genericError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ok<R> value)? ok,
    TResult Function(_OkNoContent<R> value)? okNoContent,
    TResult Function(_Unauthorized<R> value)? unauthorized,
    TResult Function(_Forbidden<R> value)? forbidden,
    TResult Function(_NotFound<R> value)? notFound,
    TResult Function(_UnprocessableEntity<R> value)? unprocessableEntity,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (genericError != null) {
      return genericError(this);
    }
    return orElse();
  }
}

abstract class _GenericError<R> implements NetworkResponse<R> {
  const factory _GenericError(
      {required final String message,
      required final bool isConnectionIssue,
      final DioException? error}) = _$_GenericError<R>;

  String get message;
  bool get isConnectionIssue;
  DioException? get error;
  @JsonKey(ignore: true)
  _$$_GenericErrorCopyWith<R, _$_GenericError<R>> get copyWith =>
      throw _privateConstructorUsedError;
}
