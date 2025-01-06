import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_notification.freezed.dart';
part 'user_notification.g.dart';

@freezed
class UserNotification with _$UserNotification {
  factory UserNotification({
    required final String id,
    required final String title,
    required final String body,
    @JsonKey(name: 'date_time') required final DateTime dateTime,
    required final bool read,
  }) = _UserNotification;

  factory UserNotification.fromJson(final Map<String, dynamic> json) =>
      _$UserNotificationFromJson(json);
}
