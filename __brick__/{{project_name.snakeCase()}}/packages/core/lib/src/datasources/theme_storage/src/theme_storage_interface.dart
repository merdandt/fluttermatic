import 'package:flutter/material.dart';

/// {@template theme_storage_interface}
/// Theme storage.
/// {@endtemplate}
abstract class ThemeStorage {
  /// Returns the current Theme.
  Future<ThemeMode> getTheme();

  /// Saves the current Theme.
  Future<void> saveTheme(final ThemeMode key);
}
