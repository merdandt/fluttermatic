// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNotificationImpl _$$UserNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNotificationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      dateTime: DateTime.parse(json['date_time'] as String),
      read: json['read'] as bool,
    );

Map<String, dynamic> _$$UserNotificationImplToJson(
        _$UserNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'date_time': instance.dateTime.toIso8601String(),
      'read': instance.read,
    };
