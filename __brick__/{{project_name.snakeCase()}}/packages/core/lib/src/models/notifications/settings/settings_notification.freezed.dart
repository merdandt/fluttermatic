// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsNotification _$SettingsNotificationFromJson(Map<String, dynamic> json) {
  return _SettingsNotification.fromJson(json);
}

/// @nodoc
mixin _$SettingsNotification {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsNotificationCopyWith<SettingsNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsNotificationCopyWith<$Res> {
  factory $SettingsNotificationCopyWith(SettingsNotification value,
          $Res Function(SettingsNotification) then) =
      _$SettingsNotificationCopyWithImpl<$Res, SettingsNotification>;
  @useResult
  $Res call({String type, String name, bool value});
}

/// @nodoc
class _$SettingsNotificationCopyWithImpl<$Res,
        $Val extends SettingsNotification>
    implements $SettingsNotificationCopyWith<$Res> {
  _$SettingsNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsNotificationImplCopyWith<$Res>
    implements $SettingsNotificationCopyWith<$Res> {
  factory _$$SettingsNotificationImplCopyWith(_$SettingsNotificationImpl value,
          $Res Function(_$SettingsNotificationImpl) then) =
      __$$SettingsNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String name, bool value});
}

/// @nodoc
class __$$SettingsNotificationImplCopyWithImpl<$Res>
    extends _$SettingsNotificationCopyWithImpl<$Res, _$SettingsNotificationImpl>
    implements _$$SettingsNotificationImplCopyWith<$Res> {
  __$$SettingsNotificationImplCopyWithImpl(_$SettingsNotificationImpl _value,
      $Res Function(_$SettingsNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$SettingsNotificationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsNotificationImpl implements _SettingsNotification {
  _$SettingsNotificationImpl(
      {required this.type, required this.name, required this.value});

  factory _$SettingsNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsNotificationImplFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final bool value;

  @override
  String toString() {
    return 'SettingsNotification(type: $type, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsNotificationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsNotificationImplCopyWith<_$SettingsNotificationImpl>
      get copyWith =>
          __$$SettingsNotificationImplCopyWithImpl<_$SettingsNotificationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsNotificationImplToJson(
      this,
    );
  }
}

abstract class _SettingsNotification implements SettingsNotification {
  factory _SettingsNotification(
      {required final String type,
      required final String name,
      required final bool value}) = _$SettingsNotificationImpl;

  factory _SettingsNotification.fromJson(Map<String, dynamic> json) =
      _$SettingsNotificationImpl.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$SettingsNotificationImplCopyWith<_$SettingsNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
