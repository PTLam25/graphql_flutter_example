import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter_example/src/app.dart';

/// Run as io
void run() {
  runZonedGuarded<void>(
    () async {
      runApp(const App());
    },
    (final error, final stackTrace) {
      log(
        'runZonedGuarded',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
