// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsNotificationImpl _$$SettingsNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsNotificationImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      value: json['value'] as bool,
    );

Map<String, dynamic> _$$SettingsNotificationImplToJson(
        _$SettingsNotificationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'value': instance.value,
    };
