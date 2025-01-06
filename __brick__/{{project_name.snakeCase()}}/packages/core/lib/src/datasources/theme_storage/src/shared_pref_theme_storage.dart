import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// {@template locale_storage_interface}
/// On device theme storage for the authentication client.
/// {@endtemplate}
class OnDeviceThemeStorage implements ThemeStorage {
  OnDeviceThemeStorage({
    required final Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  ThemeMode? _memoryStorage;

  static const _themeStorageKey = '__on_device_theme_storage__';

  @override
  Future<ThemeMode> getTheme() async {
    try {
      if (_memoryStorage != null) {
        return Future.value(_memoryStorage);
      }
      final themeString = await _storage.read(key: _themeStorageKey);

      return ThemeMode.values.firstWhere(
        (final element) => element.name == themeString,
        orElse: () => ThemeMode.system,
      );
    } on Object catch (e) {
      throw PersistentStorageException(e);
    }
  }

  @override
  Future<void> saveTheme(final ThemeMode theme) {
    try {
      return _storage.write(key: _themeStorageKey, value: theme.name).then(
            (final retrived) => _memoryStorage = theme,
          );
    } on Object catch (e) {
      throw PersistentStorageException(e);
    }
  }
}
