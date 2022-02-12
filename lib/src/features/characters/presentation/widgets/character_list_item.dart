import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';
import 'package:graphql_flutter_example/src/common/domain/gender.dart';

typedef OnCharacterTap = void Function(Character character);

class CharacterListItem extends StatelessWidget {
  final Character character;
  final OnCharacterTap? onTap;

  const CharacterListItem({
    required this.character,
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap == null ? null : () => onTap?.call(character),
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(character.image),
      ),
      title: Text(character.name),
      subtitle: Text(character.status.name),
      trailing: Icon(_getIconByGender(character.gender)),
    );
  }

  IconData _getIconByGender(Gender gender) {
    switch (gender) {
      case Gender.male:
        return Icons.male;
      case Gender.female:
        return Icons.female;
      case Gender.genderless:
        return Icons.not_interested;
      case Gender.unknown:
        return Icons.device_unknown;
    }
  }
}
