part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.loadInitialCharacters() =
      _LoadInitialCharacters;

  const factory CharactersEvent.loadMoreCharacters() = _LoadMoreCharacters;
}
