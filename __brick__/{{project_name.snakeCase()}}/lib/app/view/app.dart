import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
// import 'package:{{project_name.snakeCase()}}/counter/counter.dart';
import 'package:internationalization/internationalization.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: {{short_name.upperCase()}}Theme().darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SizedBox(),
    );
  }
}
