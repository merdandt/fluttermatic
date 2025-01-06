import 'package:{{project_name.snakeCase()}}_ui/src/modals/modals.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  UIModals get modals => UIModals.of(this);

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Size get mqSize => MediaQuery.of(this).size;
}
