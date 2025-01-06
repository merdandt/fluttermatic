import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_notification.freezed.dart';
part 'settings_notification.g.dart';

@freezed
class SettingsNotification with _$SettingsNotification {
  factory SettingsNotification({
    required final String type,
    required final String name,
    required final bool value,
  }) = _SettingsNotification;

  factory SettingsNotification.fromJson(final Map<String, dynamic> json) =>
      _$SettingsNotificationFromJson(json);
}
