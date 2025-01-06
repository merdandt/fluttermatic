import 'package:package_info_plus/package_info_plus.dart';

class AppVersion {
  AppVersion._();
  static String? _version;

  static String get version => _version ?? '';

  static Future checkAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    AppVersion._version = packageInfo.version;
    return packageInfo.version;
  }
}




//  static Storage? _storage;

//   /// Setter for instance of [Storage] which will be used to
//   /// manage persisting/restoring the [Bloc] state.
//   static set storage(Storage? storage) => _storage = storage;

//   /// Instance of [Storage] which will be used to
//   /// manage persisting/restoring the [Bloc] state.
//   static Storage get storage {
//     if (_storage == null) throw const StorageNotFound();
//     return _storage!;
//   }
