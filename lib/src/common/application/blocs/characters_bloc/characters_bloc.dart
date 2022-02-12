import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter_example/src/common/application/i_character_service.dart';
import 'package:graphql_flutter_example/src/common/domain/character/character.dart';
import 'package:graphql_flutter_example/src/common/infrastructure/request_error/request_error.dart';
import 'package:injectable/injectable.dart';

part 'characters_bloc.freezed.dart';

part 'characters_event.dart';

part 'characters_state.dart';

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ICharacterService _characterService;

  CharactersBloc(this._characterService)
      : super(const CharactersState.initial()) {
    on<_LoadInitialCharacters>(_onLoadInitialCharacters);
    on<_LoadMoreCharacters>(
      _onLoadMoreCharacters,
      transformer: droppable(),
    );
  }

  FutureOr<void> _onLoadInitialCharacters(
    _LoadInitialCharacters _,
    Emitter<CharactersState> emit,
  ) async {
    emit(const CharactersState.loading());

    final result = await _characterService.characters(1);

    final newState = result.fold(
      CharactersState.error,
      (charactersResponse) => CharactersState.success(
        characters: charactersResponse.results.lock,
        nextPage: charactersResponse.info.next,
      ),
    );

    emit(newState);
  }

  FutureOr<void> _onLoadMoreCharacters(
    _LoadMoreCharacters _,
    Emitter<CharactersState> emit,
  ) async {
    await state.mapOrNull(success: (state) async {
      final nextPage = state.nextPage;
      if (nextPage == null) {
        return;
      }

      emit(
        state.copyWith(
          isPaginating: true,
          paginationError: null,
        ),
      );

      final result = await _characterService.characters(nextPage);

      final newState = result.fold(
        (error) => state.copyWith(
          isPaginating: false,
          paginationError: error,
        ),
        (charactersResponse) => state.copyWith(
          characters: state.characters.addAll(charactersResponse.results),
          nextPage: charactersResponse.info.next,
          isPaginating: false,
          paginationError: null,
        ),
      );

      emit(newState);
    });
  }
}
