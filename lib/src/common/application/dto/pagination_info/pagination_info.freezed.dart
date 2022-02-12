// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
class _$PaginationInfoTearOff {
  const _$PaginationInfoTearOff();

  _PaginationInfo call({required int? next}) {
    return _PaginationInfo(
      next: next,
    );
  }

  PaginationInfo fromJson(Map<String, Object?> json) {
    return PaginationInfo.fromJson(json);
  }
}

/// @nodoc
const $PaginationInfo = _$PaginationInfoTearOff();

/// @nodoc
mixin _$PaginationInfo {
  int? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res>;
  $Res call({int? next});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  final PaginationInfo _value;
  // ignore: unused_field
  final $Res Function(PaginationInfo) _then;

  @override
  $Res call({
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$PaginationInfoCopyWith(
          _PaginationInfo value, $Res Function(_PaginationInfo) then) =
      __$PaginationInfoCopyWithImpl<$Res>;
  @override
  $Res call({int? next});
}

/// @nodoc
class __$PaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res>
    implements _$PaginationInfoCopyWith<$Res> {
  __$PaginationInfoCopyWithImpl(
      _PaginationInfo _value, $Res Function(_PaginationInfo) _then)
      : super(_value, (v) => _then(v as _PaginationInfo));

  @override
  _PaginationInfo get _value => super._value as _PaginationInfo;

  @override
  $Res call({
    Object? next = freezed,
  }) {
    return _then(_PaginationInfo(
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationInfo implements _PaginationInfo {
  const _$_PaginationInfo({required this.next});

  factory _$_PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationInfoFromJson(json);

  @override
  final int? next;

  @override
  String toString() {
    return 'PaginationInfo(next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationInfo &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$PaginationInfoCopyWith<_PaginationInfo> get copyWith =>
      __$PaginationInfoCopyWithImpl<_PaginationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationInfoToJson(this);
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo({required int? next}) = _$_PaginationInfo;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$_PaginationInfo.fromJson;

  @override
  int? get next;
  @override
  @JsonKey(ignore: true)
  _$PaginationInfoCopyWith<_PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
