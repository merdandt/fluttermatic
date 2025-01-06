import 'package:flutter/widgets.dart';
import 'package:internationalization/internationalization.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
