import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_example/src/common/application/blocs/characters_bloc/characters_bloc.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';
import 'package:graphql_flutter_example/src/common/injection/injection.dart';
import 'package:graphql_flutter_example/src/common/presentation/widgets/loading_indicator.dart';
import 'package:graphql_flutter_example/src/common/presentation/widgets/try_again_button.dart';
import 'package:graphql_flutter_example/src/features/character_details/presentation/character_details_page.dart';
import 'package:graphql_flutter_example/src/features/characters/presentation/widgets/character_list.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final CharactersBloc _charactersBloc = getIt<CharactersBloc>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (_) =>
          _charactersBloc..add(const CharactersEvent.loadInitialCharacters()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Characters'),
        ),
        body: SafeArea(
          child: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (_, state) {
              return state.map(
                initial: (_) => const SizedBox.shrink(),
                loading: (_) => const LoadingIndicator(),
                success: (state) => CharacterList(
                  characters: state.characters,
                  onCharacterTap: _onCharacterTap,
                  isPaginating: state.isPaginating,
                  paginationError: state.paginationError,
                  scrollController: _scrollController,
                  onPaginationErrorRetry: _onPaginationErrorRetry,
                ),
                error: (error) => Center(
                  child: TryAgainButton(
                    onTap: _onRetry,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onCharacterTap(Character character) {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (_) => CharacterDetailsPage(
          character: character,
        ),
      ),
    );
  }

  void _onRetry() {
    _charactersBloc.add(const CharactersEvent.loadInitialCharacters());
  }

  void _onPaginationErrorRetry() {
    _charactersBloc.add(const CharactersEvent.loadMoreCharacters());
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      if (_charactersBloc.state.hasPaginationError) {
        return;
      }

      _charactersBloc.add(const CharactersEvent.loadMoreCharacters());
    }
  }
}
