import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter_example/src/common/application/blocs/characters_bloc/characters_bloc.dart';
import 'package:graphql_flutter_example/src/common/injection/injection.dart';
import 'package:graphql_flutter_example/src/common/presentation/widgets/loading_indicator.dart';
import 'package:graphql_flutter_example/src/features/characters/presentation/widgets/character_list.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (_) => getIt<CharactersBloc>()
        ..add(const CharactersEvent.loadInitialCharacters()),
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
                success: (state) => const CharacterList(),
                error: (error) => const Text('Error'),
              );
            },
          ),
        ),
      ),
    );
  }
}
