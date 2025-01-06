import 'dart:convert';

import 'package:core/core.dart';

/// Storage keys for the [NotificationsStorage].
abstract class NotificationsStorageKeys {
  /// Whether the notifications are enabled.
  static const notificationsEnabled = '__notifications_enabled_storage_key__';

  /// The list of user's categories preferences.
  static const topicsPreferences = '__categories_preferences_storage_key__';
}

/// {@template notifications_storage}
/// Storage for the [NotificationsRepository].
/// {@endtemplate}
class OnDeviceNotificationsStorage extends NotificationsStorage {
  /// {@macro notifications_storage}
  OnDeviceNotificationsStorage({
    required final Storage storage,
  }) : _storage = storage;

  final Storage _storage;

  @override
  Future<bool> fetchNotificationsEnabled() async =>
      (await _storage.read(
        key: NotificationsStorageKeys.notificationsEnabled,
      ))
          ?.parseBool() ??
      false;

  @override
  Future<Set<String>?> fetchTopicsPreferences() async {
    final topics = await _storage.read(
      key: NotificationsStorageKeys.topicsPreferences,
    );
    if (topics == null) {
      return null;
    }

    return List<String>.from(json.decode(topics) as List).toSet();
  }

  @override
  Future<void> setNotificationsEnabled({required final bool enabled}) async =>
      _storage.write(
        key: NotificationsStorageKeys.notificationsEnabled,
        value: enabled.toString(),
      );

  @override
  Future<void> setTopicsPreferences({required final Set<String> topics}) async {
    final topicsEncoded =
        json.encode(topics.map((final topic) => topic).toSet());
    await _storage.write(
      key: NotificationsStorageKeys.topicsPreferences,
      value: topicsEncoded,
    );
  }
}
