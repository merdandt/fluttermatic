// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_fcm_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFCMBody _$UpdateFCMBodyFromJson(Map<String, dynamic> json) {
  return _UpdateFCMBody.fromJson(json);
}

/// @nodoc
mixin _$UpdateFCMBody {
  @JsonKey(name: 'fcm_token')
  String get fcmToken => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFCMBodyCopyWith<UpdateFCMBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFCMBodyCopyWith<$Res> {
  factory $UpdateFCMBodyCopyWith(
          UpdateFCMBody value, $Res Function(UpdateFCMBody) then) =
      _$UpdateFCMBodyCopyWithImpl<$Res, UpdateFCMBody>;
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken, String device});
}

/// @nodoc
class _$UpdateFCMBodyCopyWithImpl<$Res, $Val extends UpdateFCMBody>
    implements $UpdateFCMBodyCopyWith<$Res> {
  _$UpdateFCMBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFCMBodyImplCopyWith<$Res>
    implements $UpdateFCMBodyCopyWith<$Res> {
  factory _$$UpdateFCMBodyImplCopyWith(
          _$UpdateFCMBodyImpl value, $Res Function(_$UpdateFCMBodyImpl) then) =
      __$$UpdateFCMBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fcm_token') String fcmToken, String device});
}

/// @nodoc
class __$$UpdateFCMBodyImplCopyWithImpl<$Res>
    extends _$UpdateFCMBodyCopyWithImpl<$Res, _$UpdateFCMBodyImpl>
    implements _$$UpdateFCMBodyImplCopyWith<$Res> {
  __$$UpdateFCMBodyImplCopyWithImpl(
      _$UpdateFCMBodyImpl _value, $Res Function(_$UpdateFCMBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? device = null,
  }) {
    return _then(_$UpdateFCMBodyImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFCMBodyImpl implements _UpdateFCMBody {
  _$UpdateFCMBodyImpl(
      {@JsonKey(name: 'fcm_token') required this.fcmToken,
      required this.device});

  factory _$UpdateFCMBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFCMBodyImplFromJson(json);

  @override
  @JsonKey(name: 'fcm_token')
  final String fcmToken;
  @override
  final String device;

  @override
  String toString() {
    return 'UpdateFCMBody(fcmToken: $fcmToken, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFCMBodyImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFCMBodyImplCopyWith<_$UpdateFCMBodyImpl> get copyWith =>
      __$$UpdateFCMBodyImplCopyWithImpl<_$UpdateFCMBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFCMBodyImplToJson(
      this,
    );
  }
}

abstract class _UpdateFCMBody implements UpdateFCMBody {
  factory _UpdateFCMBody(
      {@JsonKey(name: 'fcm_token') required final String fcmToken,
      required final String device}) = _$UpdateFCMBodyImpl;

  factory _UpdateFCMBody.fromJson(Map<String, dynamic> json) =
      _$UpdateFCMBodyImpl.fromJson;

  @override
  @JsonKey(name: 'fcm_token')
  String get fcmToken;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$UpdateFCMBodyImplCopyWith<_$UpdateFCMBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
