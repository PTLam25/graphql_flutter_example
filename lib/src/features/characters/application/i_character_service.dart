import 'package:dartz/dartz.dart';
import 'package:graphql_flutter_example/src/common/infrastructure/request_error/request_error.dart';
import 'package:graphql_flutter_example/src/features/characters/application/dto/characters_response/characters_response.dart';

abstract class ICharacterService {
  Future<Either<RequestError, CharactersResponse>> characters(int page);
}
