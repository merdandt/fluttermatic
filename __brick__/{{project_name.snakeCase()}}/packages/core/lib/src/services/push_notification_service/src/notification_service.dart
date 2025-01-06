import 'dart:async';
import 'package:core/src/services/push_notification_service/src/models/models.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

/// {@template notification_service}
/// A Singleton service to deal with Firebase notifications
/// {@endtemplate}
/// {@macro notification_service}
class NotificationService {
  /// Eager initialization
  /// {@macro notification_service}
  NotificationService._();
  static final NotificationService _singleton = NotificationService._();
  static NotificationService get instance => _singleton;

  /// Subject Streams for [onNotification]
  final PublishSubject<NotificationModel> _onNotification = PublishSubject();

  /// Subject Streams for [onNotificationOpenedApp]
  final PublishSubject<NotificationModel> _onNotificationOpenedApp =
      PublishSubject();

  /// Subject Streams for [onTokenRefresh]
  final PublishSubject<String> _onTokenRefresh = PublishSubject();

  /// Returns a Stream that is called when an incoming FCM payload is received
  /// whilst the Flutter instance is in the foreground.
  Stream<NotificationModel> get onNotification => _onNotification.stream;

  /// A Stream event will be sent if the app has opened from a background state
  /// (not terminated).
  Stream<NotificationModel> get onNotificationOpenedApp =>
      _onNotificationOpenedApp.stream;

  /// Stream that listens genration of a new FCM token.
  Stream<String> get onTokenRefresh => _onTokenRefresh.stream;

  /// Initializes the notification service
  Future<void> init() async {
    try {
      if (await FirebaseMessaging.instance.isSupported()) {
        final settings = await FirebaseMessaging.instance.requestPermission();

        final isGranted =
            settings.authorizationStatus == AuthorizationStatus.authorized ||
                settings.authorizationStatus == AuthorizationStatus.provisional;

        if (!isGranted) return;

        final token = await FirebaseMessaging.instance.getToken();
        if (token != null) {
          _onTokenRefresh.add(token);
        }
        FirebaseMessaging.instance.onTokenRefresh.listen(_onTokenRefresh.add);
        FirebaseMessaging.onMessage.listen((final event) {
          _onNotification.add(NotificationModel.fromRemoteMessage(event));
        });
        FirebaseMessaging.onMessageOpenedApp.listen((final event) {
          _onNotificationOpenedApp
              .add(NotificationModel.fromRemoteMessage(event));
        });
        FirebaseMessaging.onBackgroundMessage(_notificationBackgroundHandler);
      }
    } on Object catch (e) {
      throw NotificationInitializationError(e);
    }
  }

  Future<void> updateToken({
    required final String newToken,
    required final Function({
      required String deviceName,
      required String firebaseToken,
    }) refresher,
  }) async {
    try {
      final device = await _deviceName();
      if (device == null) {
        return;
      }
      await refresher(deviceName: device, firebaseToken: newToken);
    } on Object catch (e) {
      throw NotificationTokenRefreshError(e);
    }
  }

  Future<String?> _deviceName() async {
    final plugin = DeviceInfoPlugin();
    try {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
          final android = await plugin.androidInfo;
          final concat = '${android.brand} ${android.model}';
          if (concat.isEmpty) {
            return null;
          }

          return concat;
        case TargetPlatform.fuchsia:
          return null;
        case TargetPlatform.iOS:
          final ios = await plugin.iosInfo;
          final concat = '${ios.model} ${ios.identifierForVendor ?? ""}';
          if (concat.isEmpty) {
            return null;
          }

          return concat;
        case TargetPlatform.linux:
          return null;
        case TargetPlatform.macOS:
          return null;
        case TargetPlatform.windows:
          return null;
      }
    } on Object {
      return null;
    }
  }

  /// Disposes all the streams
  /// {@macro notification_service}
  Future<void> dispose() async {
    await _onNotification.close();
    await _onNotificationOpenedApp.close();
    await _onTokenRefresh.close();
  }
}

@pragma('vm:entry-point')
Future<void> _notificationBackgroundHandler(
  final RemoteMessage remoteMessage,
) =>
    Future.value();
