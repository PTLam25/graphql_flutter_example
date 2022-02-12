import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter_example/src/common/application/dto/characters_response/characters_response.dart';
import 'package:graphql_flutter_example/src/common/application/i_character_service.dart';
import 'package:graphql_flutter_example/src/common/infrastructure/request_error/request_error.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICharacterService)
class CharacterService implements ICharacterService {
  static String charactersQuery = r'''
  query ($page: Int!){
    characters(page: $page){
      info {
        next
      }
      results{
        id
        name
        status
        gender
        image
        episode {
				  id
				  name
				}
      }
    }
  }
  ''';
  final GraphQLClient _client;

  CharacterService(this._client);

  @override
  Future<Either<RequestError, CharactersResponse>> characters(int page) async {
    try {
      final options = QueryOptions<dynamic>(
        document: gql(charactersQuery),
        variables: <String, dynamic>{
          'page': page,
        },
      );

      final response = await _client.query<dynamic>(options);

      if (response.hasException) {
        throw Exception(response.exception.toString());
      }

      return right(CharactersResponse.fromJson(
        response.data?['characters'] as Map<String, dynamic>,
      ));
    } on Exception catch (error) {
      return left(RequestError.serverError(error));
    }
  }
}
