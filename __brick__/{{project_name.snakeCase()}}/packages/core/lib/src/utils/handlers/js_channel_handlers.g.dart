// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'js_channel_handlers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JsEventImpl _$$JsEventImplFromJson(Map<String, dynamic> json) =>
    _$JsEventImpl(
      type: $enumDecode(_$JsEventTypesEnumMap, json['type']),
      payload: json['payload'] as String,
    );

Map<String, dynamic> _$$JsEventImplToJson(_$JsEventImpl instance) =>
    <String, dynamic>{
      'type': _$JsEventTypesEnumMap[instance.type]!,
      'payload': instance.payload,
    };

const _$JsEventTypesEnumMap = {
  JsEventTypes.cardInserted: 'cardInserted',
  JsEventTypes.smsInserted: 'smsInserted',
  JsEventTypes.jsInserted: 'jsInserted',
};

_$JsActionImpl _$$JsActionImplFromJson(Map<String, dynamic> json) =>
    _$JsActionImpl(
      action: $enumDecode(_$JsActionTypesEnumMap, json['action']),
      meta: json['meta'],
    );

Map<String, dynamic> _$$JsActionImplToJson(_$JsActionImpl instance) =>
    <String, dynamic>{
      'action': _$JsActionTypesEnumMap[instance.action]!,
      'meta': instance.meta,
    };

const _$JsActionTypesEnumMap = {
  JsActionTypes.CLOSE_WINDOW: 'CLOSE_WINDOW',
  JsActionTypes.TOASTER: 'TOASTER',
  JsActionTypes.ASK_SMS: 'ASK_SMS',
};
