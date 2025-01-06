import 'package:core/src/datasources/locale_storage/src/locale_storage.dart';

/// {@template locale_storage_interface}
/// Locale storage for the authentication client.
/// {@endtemplate}
abstract class LocaleStorage {
  /// Returns the current locale.
  Future<String> getLocale();

  /// Saves the current locale.
  Future<void> saveLocale(final LocalesKeys key);
}
