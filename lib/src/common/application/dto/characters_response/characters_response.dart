import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter_example/src/common/application/dto/pagination_info/pagination_info.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';

part 'characters_response.freezed.dart';

part 'characters_response.g.dart';

@freezed
abstract class CharactersResponse with _$CharactersResponse {
  const factory CharactersResponse({
    required PaginationInfo info,
    required List<Character> results,
  }) = _CharactersResponse;

  factory CharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseFromJson(json);
}
