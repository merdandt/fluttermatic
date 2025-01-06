import 'package:core/core.dart';

/// {@template locale_storage_interface}
/// On device Locale storage.
/// {@endtemplate}
class OnDeviceLocalStorage implements LocaleStorage {
  OnDeviceLocalStorage({
    required final Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  String? _memoryStorage;

  static const _localeStorageKey = '__on_device_local_storage__';

  @override
  Future<String> getLocale() async {
    try {
      if (_memoryStorage != null) {
        return Future.value(_memoryStorage);
      }

      return await _storage.read(key: _localeStorageKey) ?? LocalesKeys.tm.name;
    } on Object catch (e) {
      throw PersistentStorageException(e);
    }
  }

  @override
  Future<void> saveLocale(final LocalesKeys locale) {
    try {
      return _storage.write(key: _localeStorageKey, value: locale.name).then(
            (final retrived) => _memoryStorage = locale.name,
          );
    } on Object catch (e) {
      throw PersistentStorageException(e);
    }
  }
}
