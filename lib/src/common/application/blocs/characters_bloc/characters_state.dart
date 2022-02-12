part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = _Initial;

  const factory CharactersState.loading() = _Loading;

  const factory CharactersState.success({
    required IList<Character> characters,
    required int? nextPage,
    @Default(false) bool isPaginating,
    RequestError? paginationError,
  }) = _Success;

  const factory CharactersState.error(RequestError requestError) = _Error;
}
