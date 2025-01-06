import 'package:core/core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// {@template secure_storage}
/// A Secure Storage client which implements the base [Storage] interface.
/// [SecureStorage] uses `FlutterSecureStorage` internally.
///
/// ```dart
/// // Create a `SecureStorage` instance.
/// final storage = const SecureStorage();
///
/// // Write a key/value pair.
/// await storage.write(key: 'my_key', value: 'my_value');
///
/// // Read value for key.
/// final value = await storage.read(key: 'my_key'); // 'my_value'
/// ```
/// {@endtemplate}
class SecureStorage implements Storage {
  /// {@macro secure_storage}
  const SecureStorage([final FlutterSecureStorage? secureStorage])
      : _secureStorage = secureStorage ??
            const FlutterSecureStorage(
              aOptions: AndroidOptions(
                encryptedSharedPreferences: true,
              ),
            );

  final FlutterSecureStorage _secureStorage;

  @override
  Future<String?> read({required final String key}) async {
    try {
      return await _secureStorage.read(key: key);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        SecureStorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<void> write({
    required final String key,
    required final String value,
  }) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        SecureStorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<void> delete({required final String key}) async {
    try {
      await _secureStorage.delete(key: key);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        SecureStorageException(error),
        stackTrace,
      );
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _secureStorage.deleteAll();
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        SecureStorageException(error),
        stackTrace,
      );
    }
  }
}
