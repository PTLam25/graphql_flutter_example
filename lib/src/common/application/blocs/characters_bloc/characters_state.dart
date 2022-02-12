part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  bool get hasPaginationError {
    return mapOrNull(
          success: (state) {
            if (state.paginationError == null) return false;

            return true;
          },
        ) ??
        false;
  }

  const CharactersState._();

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
