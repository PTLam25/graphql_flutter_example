import 'package:dartz/dartz.dart';
import 'package:graphql_flutter_example/src/common/application/dto/characters_response/characters_response.dart';
import 'package:graphql_flutter_example/src/common/infrastructure/request_error/request_error.dart';

abstract class ICharacterService {
  Future<Either<RequestError, CharactersResponse>> characters(int page);
}
