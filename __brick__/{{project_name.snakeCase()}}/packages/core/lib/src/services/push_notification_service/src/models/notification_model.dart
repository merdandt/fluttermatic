import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required final String title,
    required final String body,
    required final Map<String, dynamic> payload,
    @Default(false) final bool isError,
  }) = _NotificationModel;

  factory NotificationModel.success({
    final String? title,
    final String? body,
    final Map<String, dynamic>? payload,
    final bool isError = false,
  }) =>
      NotificationModel(
        title: title?.toString() ?? '',
        body: body?.toString() ?? '',
        payload: payload ?? {},
        isError: isError,
      );

  factory NotificationModel.failed({
    final String? title,
    final String? body,
    final Map<String, dynamic>? payload,
    final bool isError = true,
  }) =>
      NotificationModel(
        title: title?.toString() ?? '',
        body: body?.toString() ?? '',
        payload: payload ?? {},
        isError: isError,
      );

  factory NotificationModel.fromRemoteMessage(final RemoteMessage message) =>
      NotificationModel(
        title: message.notification?.title?.toString() ?? '',
        body: message.notification?.body?.toString() ?? '',
        payload: message.data,
      );

  factory NotificationModel.fromJson(final Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
