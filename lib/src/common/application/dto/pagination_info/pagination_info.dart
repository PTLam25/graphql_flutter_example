import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info.freezed.dart';

part 'pagination_info.g.dart';

@freezed
abstract class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required int? next,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}
