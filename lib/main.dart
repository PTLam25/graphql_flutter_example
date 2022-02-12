import 'package:graphql_flutter_example/runner_stub.dart'
    if (dart.library.io) 'package:graphql_flutter_example/runner_io.dart'
    if (dart.library.html) 'package:graphql_flutter_example/runner_web.dart'
    as runner;
import 'package:graphql_flutter_example/src/common/injection/injection.dart';

Future<void> main() async {
  await configureInjection();

  runner.run();
}
