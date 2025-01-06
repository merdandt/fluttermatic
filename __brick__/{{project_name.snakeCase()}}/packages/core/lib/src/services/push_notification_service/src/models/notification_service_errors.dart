import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_service_errors.freezed.dart';

@freezed
class NotificationServiceError
    with _$NotificationServiceError
    implements Exception {
  factory NotificationServiceError.notificationTokenRefreshError([
    final Object? error,
  ]) = NotificationTokenRefreshError;
  factory NotificationServiceError.notificationInitializationError([
    final Object? error,
  ]) = NotificationInitializationError;
}
