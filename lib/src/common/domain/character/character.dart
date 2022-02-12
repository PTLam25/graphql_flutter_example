import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter_example/src/common/domain/episode/episode.dart';
import 'package:graphql_flutter_example/src/common/domain/gender.dart';
import 'package:graphql_flutter_example/src/common/domain/status.dart';

part 'character.freezed.dart';

part 'character.g.dart';

@freezed
abstract class Character with _$Character {
  const factory Character({
    required String id,
    required String name,
    required Gender gender,
    required Status status,
    required String image,
    required IList<Episode> episode,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
