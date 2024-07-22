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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
abstract class _$$OkImplCopyWith<R, $Res> {
  factory _$$OkImplCopyWith(
          _$OkImpl<R> value, $Res Function(_$OkImpl<R>) then) =
      __$$OkImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({R response});
}

/// @nodoc
class __$$OkImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$OkImpl<R>>
    implements _$$OkImplCopyWith<R, $Res> {
  __$$OkImplCopyWithImpl(_$OkImpl<R> _value, $Res Function(_$OkImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$OkImpl<R>(
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$OkImpl<R> implements _Ok<R> {
  const _$OkImpl(this.response);

  @override
  final R response;

  @override
  String toString() {
    return 'NetworkResponse<$R>.ok(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkImpl<R> &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkImplCopyWith<R, _$OkImpl<R>> get copyWith =>
      __$$OkImplCopyWithImpl<R, _$OkImpl<R>>(this, _$identity);

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _Ok(final R response) = _$OkImpl<R>;

  R get response;
  @JsonKey(ignore: true)
  _$$OkImplCopyWith<R, _$OkImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OkNoContentImplCopyWith<R, $Res> {
  factory _$$OkNoContentImplCopyWith(_$OkNoContentImpl<R> value,
          $Res Function(_$OkNoContentImpl<R>) then) =
      __$$OkNoContentImplCopyWithImpl<R, $Res>;
}

/// @nodoc
class __$$OkNoContentImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$OkNoContentImpl<R>>
    implements _$$OkNoContentImplCopyWith<R, $Res> {
  __$$OkNoContentImplCopyWithImpl(
      _$OkNoContentImpl<R> _value, $Res Function(_$OkNoContentImpl<R>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OkNoContentImpl<R> implements _OkNoContent<R> {
  const _$OkNoContentImpl();

  @override
  String toString() {
    return 'NetworkResponse<$R>.okNoContent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OkNoContentImpl<R>);
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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _OkNoContent() = _$OkNoContentImpl<R>;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<R, $Res> {
  factory _$$UnauthorizedImplCopyWith(_$UnauthorizedImpl<R> value,
          $Res Function(_$UnauthorizedImpl<R>) then) =
      __$$UnauthorizedImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$UnauthorizedImpl<R>>
    implements _$$UnauthorizedImplCopyWith<R, $Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl<R> _value, $Res Function(_$UnauthorizedImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UnauthorizedImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$UnauthorizedImpl<R> implements _Unauthorized<R> {
  const _$UnauthorizedImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.unauthorized(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedImplCopyWith<R, _$UnauthorizedImpl<R>> get copyWith =>
      __$$UnauthorizedImplCopyWithImpl<R, _$UnauthorizedImpl<R>>(
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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _Unauthorized(final DioException error) = _$UnauthorizedImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$UnauthorizedImplCopyWith<R, _$UnauthorizedImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<R, $Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl<R> value, $Res Function(_$ForbiddenImpl<R>) then) =
      __$$ForbiddenImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$ForbiddenImpl<R>>
    implements _$$ForbiddenImplCopyWith<R, $Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl<R> _value, $Res Function(_$ForbiddenImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ForbiddenImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$ForbiddenImpl<R> implements _Forbidden<R> {
  const _$ForbiddenImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.forbidden(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenImplCopyWith<R, _$ForbiddenImpl<R>> get copyWith =>
      __$$ForbiddenImplCopyWithImpl<R, _$ForbiddenImpl<R>>(this, _$identity);

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _Forbidden(final DioException error) = _$ForbiddenImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$ForbiddenImplCopyWith<R, _$ForbiddenImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<R, $Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl<R> value, $Res Function(_$NotFoundImpl<R>) then) =
      __$$NotFoundImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$NotFoundImpl<R>>
    implements _$$NotFoundImplCopyWith<R, $Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl<R> _value, $Res Function(_$NotFoundImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$NotFoundImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl<R> implements _NotFound<R> {
  const _$NotFoundImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.notFound(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<R, _$NotFoundImpl<R>> get copyWith =>
      __$$NotFoundImplCopyWithImpl<R, _$NotFoundImpl<R>>(this, _$identity);

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _NotFound(final DioException error) = _$NotFoundImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<R, _$NotFoundImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnprocessableEntityImplCopyWith<R, $Res> {
  factory _$$UnprocessableEntityImplCopyWith(_$UnprocessableEntityImpl<R> value,
          $Res Function(_$UnprocessableEntityImpl<R>) then) =
      __$$UnprocessableEntityImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error, R response});
}

/// @nodoc
class __$$UnprocessableEntityImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$UnprocessableEntityImpl<R>>
    implements _$$UnprocessableEntityImplCopyWith<R, $Res> {
  __$$UnprocessableEntityImplCopyWithImpl(_$UnprocessableEntityImpl<R> _value,
      $Res Function(_$UnprocessableEntityImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? response = freezed,
  }) {
    return _then(_$UnprocessableEntityImpl<R>(
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

class _$UnprocessableEntityImpl<R> implements _UnprocessableEntity<R> {
  const _$UnprocessableEntityImpl(
      {required this.error, required this.response});

  @override
  final DioException error;
  @override
  final R response;

  @override
  String toString() {
    return 'NetworkResponse<$R>.unprocessableEntity(error: $error, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnprocessableEntityImpl<R> &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnprocessableEntityImplCopyWith<R, _$UnprocessableEntityImpl<R>>
      get copyWith => __$$UnprocessableEntityImplCopyWithImpl<R,
          _$UnprocessableEntityImpl<R>>(this, _$identity);

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
      required final R response}) = _$UnprocessableEntityImpl<R>;

  DioException get error;
  R get response;
  @JsonKey(ignore: true)
  _$$UnprocessableEntityImplCopyWith<R, _$UnprocessableEntityImpl<R>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpgradeRequiredImplCopyWith<R, $Res> {
  factory _$$UpgradeRequiredImplCopyWith(_$UpgradeRequiredImpl<R> value,
          $Res Function(_$UpgradeRequiredImpl<R>) then) =
      __$$UpgradeRequiredImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$UpgradeRequiredImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$UpgradeRequiredImpl<R>>
    implements _$$UpgradeRequiredImplCopyWith<R, $Res> {
  __$$UpgradeRequiredImplCopyWithImpl(_$UpgradeRequiredImpl<R> _value,
      $Res Function(_$UpgradeRequiredImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpgradeRequiredImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$UpgradeRequiredImpl<R> implements _UpgradeRequired<R> {
  const _$UpgradeRequiredImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.upgradeRequired(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeRequiredImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeRequiredImplCopyWith<R, _$UpgradeRequiredImpl<R>> get copyWith =>
      __$$UpgradeRequiredImplCopyWithImpl<R, _$UpgradeRequiredImpl<R>>(
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
    required TResult Function(DioException error) upgradeRequired,
    required TResult Function(DioException error) serverError,
    required TResult Function(DioException error) serviceUnavailable,
    required TResult Function(
            String message, bool isConnectionIssue, DioException? error)
        genericError,
  }) {
    return upgradeRequired(error);
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
    TResult? Function(DioException error)? upgradeRequired,
    TResult? Function(DioException error)? serverError,
    TResult? Function(DioException error)? serviceUnavailable,
    TResult? Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
  }) {
    return upgradeRequired?.call(error);
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
    TResult Function(DioException error)? upgradeRequired,
    TResult Function(DioException error)? serverError,
    TResult Function(DioException error)? serviceUnavailable,
    TResult Function(
            String message, bool isConnectionIssue, DioException? error)?
        genericError,
    required TResult orElse(),
  }) {
    if (upgradeRequired != null) {
      return upgradeRequired(error);
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
    required TResult Function(_ServerError<R> value) serverError,
    required TResult Function(_ServiceUnavailable<R> value) serviceUnavailable,
    required TResult Function(_GenericError<R> value) genericError,
  }) {
    return upgradeRequired(this);
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
    TResult? Function(_ServerError<R> value)? serverError,
    TResult? Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult? Function(_GenericError<R> value)? genericError,
  }) {
    return upgradeRequired?.call(this);
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
    TResult Function(_ServerError<R> value)? serverError,
    TResult Function(_ServiceUnavailable<R> value)? serviceUnavailable,
    TResult Function(_GenericError<R> value)? genericError,
    required TResult orElse(),
  }) {
    if (upgradeRequired != null) {
      return upgradeRequired(this);
    }
    return orElse();
  }
}

abstract class _UpgradeRequired<R> implements NetworkResponse<R> {
  const factory _UpgradeRequired(final DioException error) =
      _$UpgradeRequiredImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$UpgradeRequiredImplCopyWith<R, _$UpgradeRequiredImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<R, $Res> {
  factory _$$ServerErrorImplCopyWith(_$ServerErrorImpl<R> value,
          $Res Function(_$ServerErrorImpl<R>) then) =
      __$$ServerErrorImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$ServerErrorImpl<R>>
    implements _$$ServerErrorImplCopyWith<R, $Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl<R> _value, $Res Function(_$ServerErrorImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerErrorImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl<R> implements _ServerError<R> {
  const _$ServerErrorImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.serverError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<R, _$ServerErrorImpl<R>> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<R, _$ServerErrorImpl<R>>(
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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
  const factory _ServerError(final DioException error) = _$ServerErrorImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<R, _$ServerErrorImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnavailableImplCopyWith<R, $Res> {
  factory _$$ServiceUnavailableImplCopyWith(_$ServiceUnavailableImpl<R> value,
          $Res Function(_$ServiceUnavailableImpl<R>) then) =
      __$$ServiceUnavailableImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({DioException error});
}

/// @nodoc
class __$$ServiceUnavailableImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$ServiceUnavailableImpl<R>>
    implements _$$ServiceUnavailableImplCopyWith<R, $Res> {
  __$$ServiceUnavailableImplCopyWithImpl(_$ServiceUnavailableImpl<R> _value,
      $Res Function(_$ServiceUnavailableImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServiceUnavailableImpl<R>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioException,
    ));
  }
}

/// @nodoc

class _$ServiceUnavailableImpl<R> implements _ServiceUnavailable<R> {
  const _$ServiceUnavailableImpl(this.error);

  @override
  final DioException error;

  @override
  String toString() {
    return 'NetworkResponse<$R>.serviceUnavailable(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnavailableImpl<R> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUnavailableImplCopyWith<R, _$ServiceUnavailableImpl<R>>
      get copyWith => __$$ServiceUnavailableImplCopyWithImpl<R,
          _$ServiceUnavailableImpl<R>>(this, _$identity);

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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
      _$ServiceUnavailableImpl<R>;

  DioException get error;
  @JsonKey(ignore: true)
  _$$ServiceUnavailableImplCopyWith<R, _$ServiceUnavailableImpl<R>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericErrorImplCopyWith<R, $Res> {
  factory _$$GenericErrorImplCopyWith(_$GenericErrorImpl<R> value,
          $Res Function(_$GenericErrorImpl<R>) then) =
      __$$GenericErrorImplCopyWithImpl<R, $Res>;
  @useResult
  $Res call({String message, bool isConnectionIssue, DioException? error});
}

/// @nodoc
class __$$GenericErrorImplCopyWithImpl<R, $Res>
    extends _$NetworkResponseCopyWithImpl<R, $Res, _$GenericErrorImpl<R>>
    implements _$$GenericErrorImplCopyWith<R, $Res> {
  __$$GenericErrorImplCopyWithImpl(
      _$GenericErrorImpl<R> _value, $Res Function(_$GenericErrorImpl<R>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isConnectionIssue = null,
    Object? error = freezed,
  }) {
    return _then(_$GenericErrorImpl<R>(
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

class _$GenericErrorImpl<R> implements _GenericError<R> {
  const _$GenericErrorImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericErrorImpl<R> &&
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
  _$$GenericErrorImplCopyWith<R, _$GenericErrorImpl<R>> get copyWith =>
      __$$GenericErrorImplCopyWithImpl<R, _$GenericErrorImpl<R>>(
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
    required TResult Function(DioException error) upgradeRequired,
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
    TResult? Function(DioException error)? upgradeRequired,
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
    TResult Function(DioException error)? upgradeRequired,
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
    required TResult Function(_UpgradeRequired<R> value) upgradeRequired,
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
    TResult? Function(_UpgradeRequired<R> value)? upgradeRequired,
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
    TResult Function(_UpgradeRequired<R> value)? upgradeRequired,
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
      final DioException? error}) = _$GenericErrorImpl<R>;

  String get message;
  bool get isConnectionIssue;
  DioException? get error;
  @JsonKey(ignore: true)
  _$$GenericErrorImplCopyWith<R, _$GenericErrorImpl<R>> get copyWith =>
      throw _privateConstructorUsedError;
}
