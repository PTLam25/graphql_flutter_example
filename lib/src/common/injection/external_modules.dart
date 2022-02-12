import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ExternalModules {
  @lazySingleton
  GraphQLClient get graphQLClient => GraphQLClient(
        cache: GraphQLCache(),
        link: HttpLink('https://rickandmortyapi.com/graphql'),
      );
}
