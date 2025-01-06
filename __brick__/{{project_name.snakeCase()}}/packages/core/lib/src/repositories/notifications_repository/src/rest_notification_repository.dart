import 'dart:async';
import 'dart:math';

import 'package:core/core.dart';

/// {@template notifications_repository}
/// A Rest implementation of [NotificationsRepository] repository.
/// {@endtemplate}
class RestNotificationsRepository extends NotificationsRepository {
  /// {@macro notifications_repository}
  RestNotificationsRepository({
    required final PermissionClient permissionClient,
    required final RestDatasource datasource,
  })  : _permissionClient = permissionClient,
        _datasource = datasource;
  final PermissionClient _permissionClient;
  final RestDatasource _datasource;

  @override
  Future<bool> togglePushNotifications({required final bool toggle}) async {
    try {
      final toggle = await Future.delayed(
        const Duration(seconds: 1),
        () => Random().nextBool(),
      );

      return toggle;
    } on AppExceptions {
      rethrow;
    } on Object catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        ToggleEmailNotificationsFailure(message: error.toString()),
        stackTrace,
      );
    }
  }

  @override
  Future<bool> checkNotificationsEnabled() async {
    try {
      final PermissionStatus permissionStatus =
          await _permissionClient.notificationsStatus();

      return permissionStatus.isGranted;
    } on AppExceptions {
      rethrow;
    } on Object catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        FetchNotificationsEnabledFailure(message: error.toString()),
        stackTrace,
      );
    }
  }

  @override
  Future<FcmToken> updateFcmToken({
    required final String firebaseToken,
    required final String deviceId,
  }) async {
    try {
      await _datasource.updateFcmToken(
        tokenRequestBody: UpdateFCMBody(
          fcmToken: firebaseToken,
          device: deviceId,
        ),
      );

      return FcmToken(token: firebaseToken, userId: deviceId);
    } on AppExceptions {
      rethrow;
    } on Object catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        CreateFCMTokenFailure(message: error.toString()),
        stackTrace,
      );
    }
  }

  @override
  Future<List<UserNotification>> getUserNotifications({
    required final int page,
  }) {
    try {
      final notifications = _datasource.getUserNotifications(page: page);

      return notifications;
    } on AppExceptions {
      rethrow;
    } on Object catch (e, s) {
      throw Error.throwWithStackTrace(
        GetUserNotificationFailure(message: e.toString()),
        s,
      );
    }
  }
}
