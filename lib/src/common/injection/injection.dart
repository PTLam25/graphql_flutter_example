import 'package:get_it/get_it.dart';
import 'package:graphql_flutter_example/src/common/injection/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection([String? env]) async {
  $initGetIt(getIt, environment: env);
}
