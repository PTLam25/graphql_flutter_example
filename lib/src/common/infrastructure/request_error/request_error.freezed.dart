// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestErrorTearOff {
  const _$RequestErrorTearOff();

  _ServerError serverError(Object error) {
    return _ServerError(
      error,
    );
  }

  _UnhandledError unhandledError(Object error) {
    return _UnhandledError(
      error,
    );
  }
}

/// @nodoc
const $RequestError = _$RequestErrorTearOff();

/// @nodoc
mixin _$RequestError {
  Object get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnhandledError value) unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestErrorCopyWith<RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestErrorCopyWith<$Res> {
  factory $RequestErrorCopyWith(
          RequestError value, $Res Function(RequestError) then) =
      _$RequestErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$RequestErrorCopyWithImpl<$Res> implements $RequestErrorCopyWith<$Res> {
  _$RequestErrorCopyWithImpl(this._value, this._then);

  final RequestError _value;
  // ignore: unused_field
  final $Res Function(RequestError) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res>
    implements $RequestErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$RequestErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ServerError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'RequestError.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unhandledError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnhandledError value) unhandledError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RequestError {
  const factory _ServerError(Object error) = _$_ServerError;

  @override
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnhandledErrorCopyWith<$Res>
    implements $RequestErrorCopyWith<$Res> {
  factory _$UnhandledErrorCopyWith(
          _UnhandledError value, $Res Function(_UnhandledError) then) =
      __$UnhandledErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error});
}

/// @nodoc
class __$UnhandledErrorCopyWithImpl<$Res>
    extends _$RequestErrorCopyWithImpl<$Res>
    implements _$UnhandledErrorCopyWith<$Res> {
  __$UnhandledErrorCopyWithImpl(
      _UnhandledError _value, $Res Function(_UnhandledError) _then)
      : super(_value, (v) => _then(v as _UnhandledError));

  @override
  _UnhandledError get _value => super._value as _UnhandledError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_UnhandledError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_UnhandledError implements _UnhandledError {
  const _$_UnhandledError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'RequestError.unhandledError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnhandledError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$UnhandledErrorCopyWith<_UnhandledError> get copyWith =>
      __$UnhandledErrorCopyWithImpl<_UnhandledError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unhandledError,
  }) {
    return unhandledError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
  }) {
    return unhandledError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnhandledError value) unhandledError,
  }) {
    return unhandledError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
  }) {
    return unhandledError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnhandledError value)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(this);
    }
    return orElse();
  }
}

abstract class _UnhandledError implements RequestError {
  const factory _UnhandledError(Object error) = _$_UnhandledError;

  @override
  Object get error;
  @override
  @JsonKey(ignore: true)
  _$UnhandledErrorCopyWith<_UnhandledError> get copyWith =>
      throw _privateConstructorUsedError;
}
