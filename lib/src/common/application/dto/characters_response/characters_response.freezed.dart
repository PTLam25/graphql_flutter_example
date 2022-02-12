// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'characters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharactersResponse _$CharactersResponseFromJson(Map<String, dynamic> json) {
  return _CharactersResponse.fromJson(json);
}

/// @nodoc
class _$CharactersResponseTearOff {
  const _$CharactersResponseTearOff();

  _CharactersResponse call(
      {required PaginationInfo info, required List<Character> results}) {
    return _CharactersResponse(
      info: info,
      results: results,
    );
  }

  CharactersResponse fromJson(Map<String, Object?> json) {
    return CharactersResponse.fromJson(json);
  }
}

/// @nodoc
const $CharactersResponse = _$CharactersResponseTearOff();

/// @nodoc
mixin _$CharactersResponse {
  PaginationInfo get info => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersResponseCopyWith<CharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersResponseCopyWith<$Res> {
  factory $CharactersResponseCopyWith(
          CharactersResponse value, $Res Function(CharactersResponse) then) =
      _$CharactersResponseCopyWithImpl<$Res>;
  $Res call({PaginationInfo info, List<Character> results});

  $PaginationInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharactersResponseCopyWithImpl<$Res>
    implements $CharactersResponseCopyWith<$Res> {
  _$CharactersResponseCopyWithImpl(this._value, this._then);

  final CharactersResponse _value;
  // ignore: unused_field
  final $Res Function(CharactersResponse) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }

  @override
  $PaginationInfoCopyWith<$Res> get info {
    return $PaginationInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$CharactersResponseCopyWith<$Res>
    implements $CharactersResponseCopyWith<$Res> {
  factory _$CharactersResponseCopyWith(
          _CharactersResponse value, $Res Function(_CharactersResponse) then) =
      __$CharactersResponseCopyWithImpl<$Res>;
  @override
  $Res call({PaginationInfo info, List<Character> results});

  @override
  $PaginationInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$CharactersResponseCopyWithImpl<$Res>
    extends _$CharactersResponseCopyWithImpl<$Res>
    implements _$CharactersResponseCopyWith<$Res> {
  __$CharactersResponseCopyWithImpl(
      _CharactersResponse _value, $Res Function(_CharactersResponse) _then)
      : super(_value, (v) => _then(v as _CharactersResponse));

  @override
  _CharactersResponse get _value => super._value as _CharactersResponse;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_CharactersResponse(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharactersResponse implements _CharactersResponse {
  const _$_CharactersResponse({required this.info, required this.results});

  factory _$_CharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersResponseFromJson(json);

  @override
  final PaginationInfo info;
  @override
  final List<Character> results;

  @override
  String toString() {
    return 'CharactersResponse(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharactersResponse &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$CharactersResponseCopyWith<_CharactersResponse> get copyWith =>
      __$CharactersResponseCopyWithImpl<_CharactersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersResponseToJson(this);
  }
}

abstract class _CharactersResponse implements CharactersResponse {
  const factory _CharactersResponse(
      {required PaginationInfo info,
      required List<Character> results}) = _$_CharactersResponse;

  factory _CharactersResponse.fromJson(Map<String, dynamic> json) =
      _$_CharactersResponse.fromJson;

  @override
  PaginationInfo get info;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$CharactersResponseCopyWith<_CharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
