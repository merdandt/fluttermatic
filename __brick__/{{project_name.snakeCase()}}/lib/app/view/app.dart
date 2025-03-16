import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:internationalization/internationalization.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) => MaterialApp(
    theme: UITheme().lightTheme,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    locale: AppLocalizations.supportedLocales[0],
    home: const MyHomePage(),
  );
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(final BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
      children: [
          context.theme.icons.backIcon(),
          Text(l10n.counterAppBarTitle),
        ],
      ),
    );
  }
}
