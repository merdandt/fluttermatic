// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';

part 'js_channel_handlers.freezed.dart';
part 'js_channel_handlers.g.dart';

enum JsActionTypes {
  CLOSE_WINDOW,
  TOASTER,
  ASK_SMS,
}

enum JsEventTypes {
  cardInserted('CARD_INSERTED'),
  smsInserted('SMS_INSERTED'),
  jsInserted('JS_INJECTED');

  const JsEventTypes(this._value);
  final String _value;
  String get event => _value;
}

@freezed
class JsEvent with _$JsEvent {
  factory JsEvent({
    required final JsEventTypes type,
    required final String payload,
  }) = _JsEvent;

  // ignore: unused_element
  const JsEvent._();

  factory JsEvent.fromJson(final Map<String, dynamic> json) =>
      _$JsEventFromJson(json);

  String get event =>
      """window.dispatchEvent(new CustomEvent('${type.event}', { detail: { payload: $payload}}))""";
}

@freezed
class JsAction with _$JsAction {
  factory JsAction({
    required final JsActionTypes action,
    required final dynamic meta,
  }) = _JsAction;

  factory JsAction.fromJson(final Map<String, dynamic> json) =>
      _$JsActionFromJson(json);
}
