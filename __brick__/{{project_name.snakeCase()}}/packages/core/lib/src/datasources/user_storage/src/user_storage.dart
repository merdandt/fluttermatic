import 'package:core/src/data_clients/data_clients.dart';

/// {@template user_storage}
/// Token storage for the authentication client.
/// {@endtemplate}
abstract class UserStorage {
  /// Returns the current user.
  Future<String?> readUser();

  /// Saves the current user.
  Future<void> saveUser(final String user);

  /// Clears the current user.
  Future<void> clearUser();

  /// Read the accepted terms flag.
  Future<bool> readAcceptedTerms();

  /// Saves the accepted terms flag.
  Future<bool> saveAcceptedTerms({required final bool accepted});
}

/// {@template on_device_user_storage}
/// On device user storage for the authentication client.
/// {@endtemplate}
class OnDeviceUserStorage implements UserStorage {
  OnDeviceUserStorage({
    required final Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  String? _memoryStorage;

  static const _userStorageKey = '__on_device_user_storage__';
  static const _acceptedTermsStorageKey = '__term_and_conditions_passed__';

  @override
  Future<void> clearUser() {
    _memoryStorage = null;

    return _storage.delete(key: _userStorageKey);
  }

  @override
  Future<String?> readUser() async {
    if (_memoryStorage != null) {
      return Future.value(_memoryStorage);
    }

    return _storage.read(key: _userStorageKey);
  }

  @override
  Future<void> saveUser(final String user) =>
      _storage.write(key: _userStorageKey, value: user).then(
            (final retrived) => _memoryStorage = user,
          );

  @override
  Future<bool> readAcceptedTerms() async {
    final accepted = await _storage.read(key: _acceptedTermsStorageKey);

    return accepted != null;
  }

  @override
  Future<bool> saveAcceptedTerms({required final bool accepted}) async {
    if (accepted) {
      await _storage.write(
        key: _acceptedTermsStorageKey,
        value: 'accepted',
      );

      return true;
    }

    await _storage.delete(key: _acceptedTermsStorageKey);

    return false;
  }
}
