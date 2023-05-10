// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sturdy_http_event_listener.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SturdyHttpEvent {
  RequestOptions get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestOptions request, Exception exception, StackTrace? stackTrace)
        decodingError,
    required TResult Function(RequestOptions request) authFailure,
    required TResult Function(RequestOptions request) mutativeRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult? Function(RequestOptions request)? authFailure,
    TResult? Function(RequestOptions request)? mutativeRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult Function(RequestOptions request)? authFailure,
    TResult Function(RequestOptions request)? mutativeRequestSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonDecodingError value) decodingError,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_OnMutativeRequestSuccess value)
        mutativeRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonDecodingError value)? decodingError,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonDecodingError value)? decodingError,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SturdyHttpEventCopyWith<SturdyHttpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SturdyHttpEventCopyWith<$Res> {
  factory $SturdyHttpEventCopyWith(
          SturdyHttpEvent value, $Res Function(SturdyHttpEvent) then) =
      _$SturdyHttpEventCopyWithImpl<$Res, SturdyHttpEvent>;
  @useResult
  $Res call({RequestOptions request});
}

/// @nodoc
class _$SturdyHttpEventCopyWithImpl<$Res, $Val extends SturdyHttpEvent>
    implements $SturdyHttpEventCopyWith<$Res> {
  _$SturdyHttpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JsonDecodingErrorCopyWith<$Res>
    implements $SturdyHttpEventCopyWith<$Res> {
  factory _$$_JsonDecodingErrorCopyWith(_$_JsonDecodingError value,
          $Res Function(_$_JsonDecodingError) then) =
      __$$_JsonDecodingErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestOptions request, Exception exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$_JsonDecodingErrorCopyWithImpl<$Res>
    extends _$SturdyHttpEventCopyWithImpl<$Res, _$_JsonDecodingError>
    implements _$$_JsonDecodingErrorCopyWith<$Res> {
  __$$_JsonDecodingErrorCopyWithImpl(
      _$_JsonDecodingError _value, $Res Function(_$_JsonDecodingError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? exception = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_JsonDecodingError(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_JsonDecodingError implements _JsonDecodingError {
  const _$_JsonDecodingError(this.request, this.exception, this.stackTrace);

  @override
  final RequestOptions request;
  @override
  final Exception exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'SturdyHttpEvent.decodingError(request: $request, exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonDecodingError &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JsonDecodingErrorCopyWith<_$_JsonDecodingError> get copyWith =>
      __$$_JsonDecodingErrorCopyWithImpl<_$_JsonDecodingError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestOptions request, Exception exception, StackTrace? stackTrace)
        decodingError,
    required TResult Function(RequestOptions request) authFailure,
    required TResult Function(RequestOptions request) mutativeRequestSuccess,
  }) {
    return decodingError(request, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult? Function(RequestOptions request)? authFailure,
    TResult? Function(RequestOptions request)? mutativeRequestSuccess,
  }) {
    return decodingError?.call(request, exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult Function(RequestOptions request)? authFailure,
    TResult Function(RequestOptions request)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (decodingError != null) {
      return decodingError(request, exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonDecodingError value) decodingError,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_OnMutativeRequestSuccess value)
        mutativeRequestSuccess,
  }) {
    return decodingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonDecodingError value)? decodingError,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
  }) {
    return decodingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonDecodingError value)? decodingError,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (decodingError != null) {
      return decodingError(this);
    }
    return orElse();
  }
}

abstract class _JsonDecodingError implements SturdyHttpEvent {
  const factory _JsonDecodingError(
      final RequestOptions request,
      final Exception exception,
      final StackTrace? stackTrace) = _$_JsonDecodingError;

  @override
  RequestOptions get request;
  Exception get exception;
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_JsonDecodingErrorCopyWith<_$_JsonDecodingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<$Res>
    implements $SturdyHttpEventCopyWith<$Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure value, $Res Function(_$_AuthFailure) then) =
      __$$_AuthFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions request});
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<$Res>
    extends _$SturdyHttpEventCopyWithImpl<$Res, _$_AuthFailure>
    implements _$$_AuthFailureCopyWith<$Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure _value, $Res Function(_$_AuthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_AuthFailure(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_AuthFailure implements _AuthFailure {
  const _$_AuthFailure(this.request);

  @override
  final RequestOptions request;

  @override
  String toString() {
    return 'SturdyHttpEvent.authFailure(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      __$$_AuthFailureCopyWithImpl<_$_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestOptions request, Exception exception, StackTrace? stackTrace)
        decodingError,
    required TResult Function(RequestOptions request) authFailure,
    required TResult Function(RequestOptions request) mutativeRequestSuccess,
  }) {
    return authFailure(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult? Function(RequestOptions request)? authFailure,
    TResult? Function(RequestOptions request)? mutativeRequestSuccess,
  }) {
    return authFailure?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult Function(RequestOptions request)? authFailure,
    TResult Function(RequestOptions request)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonDecodingError value) decodingError,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_OnMutativeRequestSuccess value)
        mutativeRequestSuccess,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonDecodingError value)? decodingError,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonDecodingError value)? decodingError,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements SturdyHttpEvent {
  const factory _AuthFailure(final RequestOptions request) = _$_AuthFailure;

  @override
  RequestOptions get request;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<_$_AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnMutativeRequestSuccessCopyWith<$Res>
    implements $SturdyHttpEventCopyWith<$Res> {
  factory _$$_OnMutativeRequestSuccessCopyWith(
          _$_OnMutativeRequestSuccess value,
          $Res Function(_$_OnMutativeRequestSuccess) then) =
      __$$_OnMutativeRequestSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestOptions request});
}

/// @nodoc
class __$$_OnMutativeRequestSuccessCopyWithImpl<$Res>
    extends _$SturdyHttpEventCopyWithImpl<$Res, _$_OnMutativeRequestSuccess>
    implements _$$_OnMutativeRequestSuccessCopyWith<$Res> {
  __$$_OnMutativeRequestSuccessCopyWithImpl(_$_OnMutativeRequestSuccess _value,
      $Res Function(_$_OnMutativeRequestSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$_OnMutativeRequestSuccess(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RequestOptions,
    ));
  }
}

/// @nodoc

class _$_OnMutativeRequestSuccess implements _OnMutativeRequestSuccess {
  const _$_OnMutativeRequestSuccess(this.request);

  @override
  final RequestOptions request;

  @override
  String toString() {
    return 'SturdyHttpEvent.mutativeRequestSuccess(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnMutativeRequestSuccess &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnMutativeRequestSuccessCopyWith<_$_OnMutativeRequestSuccess>
      get copyWith => __$$_OnMutativeRequestSuccessCopyWithImpl<
          _$_OnMutativeRequestSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestOptions request, Exception exception, StackTrace? stackTrace)
        decodingError,
    required TResult Function(RequestOptions request) authFailure,
    required TResult Function(RequestOptions request) mutativeRequestSuccess,
  }) {
    return mutativeRequestSuccess(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult? Function(RequestOptions request)? authFailure,
    TResult? Function(RequestOptions request)? mutativeRequestSuccess,
  }) {
    return mutativeRequestSuccess?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestOptions request, Exception exception,
            StackTrace? stackTrace)?
        decodingError,
    TResult Function(RequestOptions request)? authFailure,
    TResult Function(RequestOptions request)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (mutativeRequestSuccess != null) {
      return mutativeRequestSuccess(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonDecodingError value) decodingError,
    required TResult Function(_AuthFailure value) authFailure,
    required TResult Function(_OnMutativeRequestSuccess value)
        mutativeRequestSuccess,
  }) {
    return mutativeRequestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_JsonDecodingError value)? decodingError,
    TResult? Function(_AuthFailure value)? authFailure,
    TResult? Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
  }) {
    return mutativeRequestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JsonDecodingError value)? decodingError,
    TResult Function(_AuthFailure value)? authFailure,
    TResult Function(_OnMutativeRequestSuccess value)? mutativeRequestSuccess,
    required TResult orElse(),
  }) {
    if (mutativeRequestSuccess != null) {
      return mutativeRequestSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnMutativeRequestSuccess implements SturdyHttpEvent {
  const factory _OnMutativeRequestSuccess(final RequestOptions request) =
      _$_OnMutativeRequestSuccess;

  @override
  RequestOptions get request;
  @override
  @JsonKey(ignore: true)
  _$$_OnMutativeRequestSuccessCopyWith<_$_OnMutativeRequestSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
