/// {@template notifications_storage_interface}
/// Niotification storage client.
/// {@endtemplate}
abstract class NotificationsStorage {
  /// Returns the current notification status.
  Future<bool> fetchNotificationsEnabled();

  /// Returns the Topics.
  Future<Set<String>?> fetchTopicsPreferences();

  /// Saves the current notification status.
  Future<void> setNotificationsEnabled({required final bool enabled});

  /// Saves the current Topics.
  Future<void> setTopicsPreferences({required final Set<String> topics});
}
