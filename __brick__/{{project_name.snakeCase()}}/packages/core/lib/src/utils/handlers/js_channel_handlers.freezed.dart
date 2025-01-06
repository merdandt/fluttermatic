// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'js_channel_handlers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JsEvent _$JsEventFromJson(Map<String, dynamic> json) {
  return _JsEvent.fromJson(json);
}

/// @nodoc
mixin _$JsEvent {
  JsEventTypes get type => throw _privateConstructorUsedError;
  String get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsEventCopyWith<JsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsEventCopyWith<$Res> {
  factory $JsEventCopyWith(JsEvent value, $Res Function(JsEvent) then) =
      _$JsEventCopyWithImpl<$Res, JsEvent>;
  @useResult
  $Res call({JsEventTypes type, String payload});
}

/// @nodoc
class _$JsEventCopyWithImpl<$Res, $Val extends JsEvent>
    implements $JsEventCopyWith<$Res> {
  _$JsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as JsEventTypes,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsEventImplCopyWith<$Res> implements $JsEventCopyWith<$Res> {
  factory _$$JsEventImplCopyWith(
          _$JsEventImpl value, $Res Function(_$JsEventImpl) then) =
      __$$JsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsEventTypes type, String payload});
}

/// @nodoc
class __$$JsEventImplCopyWithImpl<$Res>
    extends _$JsEventCopyWithImpl<$Res, _$JsEventImpl>
    implements _$$JsEventImplCopyWith<$Res> {
  __$$JsEventImplCopyWithImpl(
      _$JsEventImpl _value, $Res Function(_$JsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? payload = null,
  }) {
    return _then(_$JsEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as JsEventTypes,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsEventImpl extends _JsEvent {
  _$JsEventImpl({required this.type, required this.payload}) : super._();

  factory _$JsEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsEventImplFromJson(json);

  @override
  final JsEventTypes type;
  @override
  final String payload;

  @override
  String toString() {
    return 'JsEvent(type: $type, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsEventImplCopyWith<_$JsEventImpl> get copyWith =>
      __$$JsEventImplCopyWithImpl<_$JsEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsEventImplToJson(
      this,
    );
  }
}

abstract class _JsEvent extends JsEvent {
  factory _JsEvent(
      {required final JsEventTypes type,
      required final String payload}) = _$JsEventImpl;
  _JsEvent._() : super._();

  factory _JsEvent.fromJson(Map<String, dynamic> json) = _$JsEventImpl.fromJson;

  @override
  JsEventTypes get type;
  @override
  String get payload;
  @override
  @JsonKey(ignore: true)
  _$$JsEventImplCopyWith<_$JsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JsAction _$JsActionFromJson(Map<String, dynamic> json) {
  return _JsAction.fromJson(json);
}

/// @nodoc
mixin _$JsAction {
  JsActionTypes get action => throw _privateConstructorUsedError;
  dynamic get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsActionCopyWith<JsAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsActionCopyWith<$Res> {
  factory $JsActionCopyWith(JsAction value, $Res Function(JsAction) then) =
      _$JsActionCopyWithImpl<$Res, JsAction>;
  @useResult
  $Res call({JsActionTypes action, dynamic meta});
}

/// @nodoc
class _$JsActionCopyWithImpl<$Res, $Val extends JsAction>
    implements $JsActionCopyWith<$Res> {
  _$JsActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as JsActionTypes,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JsActionImplCopyWith<$Res>
    implements $JsActionCopyWith<$Res> {
  factory _$$JsActionImplCopyWith(
          _$JsActionImpl value, $Res Function(_$JsActionImpl) then) =
      __$$JsActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JsActionTypes action, dynamic meta});
}

/// @nodoc
class __$$JsActionImplCopyWithImpl<$Res>
    extends _$JsActionCopyWithImpl<$Res, _$JsActionImpl>
    implements _$$JsActionImplCopyWith<$Res> {
  __$$JsActionImplCopyWithImpl(
      _$JsActionImpl _value, $Res Function(_$JsActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? meta = freezed,
  }) {
    return _then(_$JsActionImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as JsActionTypes,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsActionImpl implements _JsAction {
  _$JsActionImpl({required this.action, required this.meta});

  factory _$JsActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsActionImplFromJson(json);

  @override
  final JsActionTypes action;
  @override
  final dynamic meta;

  @override
  String toString() {
    return 'JsAction(action: $action, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsActionImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsActionImplCopyWith<_$JsActionImpl> get copyWith =>
      __$$JsActionImplCopyWithImpl<_$JsActionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsActionImplToJson(
      this,
    );
  }
}

abstract class _JsAction implements JsAction {
  factory _JsAction(
      {required final JsActionTypes action,
      required final dynamic meta}) = _$JsActionImpl;

  factory _JsAction.fromJson(Map<String, dynamic> json) =
      _$JsActionImpl.fromJson;

  @override
  JsActionTypes get action;
  @override
  dynamic get meta;
  @override
  @JsonKey(ignore: true)
  _$$JsActionImplCopyWith<_$JsActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
