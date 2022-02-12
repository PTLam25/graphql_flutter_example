// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      status: $enumDecode(_$StatusEnumMap, json['status']),
      image: json['image'] as String,
      episode: IList<Episode>.fromJson(json['episode'],
          (value) => Episode.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'status': _$StatusEnumMap[instance.status],
      'image': instance.image,
      'episode': instance.episode.toJson(
        (value) => value.toJson(),
      ),
    };

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
  Gender.genderless: 'Genderless',
  Gender.unknown: 'unknown',
};

const _$StatusEnumMap = {
  Status.alive: 'Alive',
  Status.dead: 'Dead',
  Status.unknown: 'unknown',
};
