import 'package:core/core.dart';

/// {@template persistent_storage}
/// Storage that saves data in the device's persistent memory.
/// {@endtemplate}
class PersistentStorage implements Storage {
  /// {@macro persistent_storage}
  const PersistentStorage({
    required final SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  /// Returns value for the provided [key] from storage.
  /// Returns `null` if no value is found for the given [key].
  ///
  /// Throws a [StorageException] if the read fails.
  @override
  Future<String?> read({required final String key}) async {
    try {
      return _sharedPreferences.getString(key);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        PersistentStorageException(error),
        stackTrace,
      );
    }
  }

  /// Writes the provided [key], [value] pair into storage.
  ///
  /// Throws a [StorageException] if the write fails.
  @override
  Future<void> write({
    required final String key,
    required final String value,
  }) async {
    try {
      await _sharedPreferences.setString(key, value);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        PersistentStorageException(error),
        stackTrace,
      );
    }
  }

  /// Removes the value for the provided [key] from storage.
  ///
  /// Throws a [StorageException] if the delete fails.
  @override
  Future<void> delete({required final String key}) async {
    try {
      await _sharedPreferences.remove(key);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        PersistentStorageException(error),
        stackTrace,
      );
    }
  }

  /// Removes all key, value pairs from storage.
  ///
  /// Throws a [StorageException] if the clear fails.
  @override
  Future<void> clear() async {
    try {
      await _sharedPreferences.clear();
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        PersistentStorageException(error),
        stackTrace,
      );
    }
  }
}
