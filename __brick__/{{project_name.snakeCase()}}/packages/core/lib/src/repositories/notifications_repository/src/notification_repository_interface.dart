import 'dart:async';

import 'package:core/core.dart';

/// {@template notifications_repository}
/// A repository that manages notification permissions and topic subscriptions.
///
/// Access to the device's notifications can be toggled with
/// [toggleNotifications] and checked with [fetchNotificationsEnabled].
/// {@endtemplate}
abstract class NotificationsRepository {
  /// Toggles notifications.
  ///
  /// If [toggle] is true, requests the notification permission if needed.
  /// If the user has denied the permission permanently, opens the permission
  /// settings.
  /// If permission is not granted returns `false`.
  /// If permission is granted, but filed to inform the server returns `null`.
  /// Otherwise returns succesefully inform the server and returns `true`.
  Future<bool> togglePushNotifications({required final bool toggle});

  /// Returns true when the notification permission is granted.
  ///
  /// and the notification setting is enabled.
  Future<bool> checkNotificationsEnabled();

  /// Creates a new FCM token for the current user and returns [FcmToken].
  Future<FcmToken> updateFcmToken({
    required final String firebaseToken,
    required final String deviceId,
  });

  /// Get User Notifications
  Future<List<UserNotification>> getUserNotifications({
    required final int page,
  });
}
