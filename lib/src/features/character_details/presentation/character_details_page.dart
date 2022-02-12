import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;

  const CharacterDetailsPage({
    required this.character,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage:
                        CachedNetworkImageProvider(character.image),
                    radius: 60.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Center(
                  child: Text(
                    character.name,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(height: 4.0),
                Center(child: Text(character.gender.name)),
                const SizedBox(height: 10.0),
                Text(
                  'Episodes:',
                  style: Theme.of(context).textTheme.headline5,
                ),
                ...character.episode
                    .map(
                      (episode) => Text(episode.name),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
