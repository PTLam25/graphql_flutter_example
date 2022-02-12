// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/characters/application/i_character_service.dart' as _i4;
import '../../features/characters/infrastructure/character_service.dart' as _i5;
import 'external_modules.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalModules = _$ExternalModules();
  gh.lazySingleton<_i3.GraphQLClient>(() => externalModules.graphQLClient);
  gh.lazySingleton<_i4.ICharacterService>(
      () => _i5.CharacterService(get<_i3.GraphQLClient>()));
  return get;
}

class _$ExternalModules extends _i6.ExternalModules {}
