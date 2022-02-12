import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';
import 'package:graphql_flutter_example/src/common/infrastructure/request_error/request_error.dart';
import 'package:graphql_flutter_example/src/common/presentation/widgets/try_again_button.dart';
import 'package:graphql_flutter_example/src/features/characters/presentation/widgets/character_list_item.dart';

class CharacterList extends StatelessWidget {
  final IList<Character> characters;
  final bool isPaginating;
  final RequestError? paginationError;
  final ScrollController scrollController;
  final VoidCallback onPaginationErrorRetry;
  final OnCharacterTap? onCharacterTap;

  const CharacterList({
    required this.characters,
    required this.isPaginating,
    required this.scrollController,
    required this.onPaginationErrorRetry,
    required this.paginationError,
    Key? key,
    this.onCharacterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        if (characters.length == index) {
          if (isPaginating) {
            return const Center(child: CircularProgressIndicator());
          } else if (paginationError != null) {
            return TryAgainButton(onTap: onPaginationErrorRetry);
          }

          return const SizedBox.shrink();
        }

        return CharacterListItem(
          character: characters[index],
          onTap: onCharacterTap,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 4.0),
      physics: const AlwaysScrollableScrollPhysics(),
      controller: scrollController,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      itemCount: characters.length + 1,
    );
  }
}
