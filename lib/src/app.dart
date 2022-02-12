import 'package:flutter/material.dart';
import 'package:graphql_flutter_example/src/common/presentation/theme/theme.dart'
    as theme;
import 'package:graphql_flutter_example/src/features/characters/presentation/characters_page.dart';

@immutable
class App extends StatefulWidget {
  const App({
    final Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (_) => 'GraphQL',
      theme: theme.themeData,
      home: const CharactersPage(),
    );
  }
}
