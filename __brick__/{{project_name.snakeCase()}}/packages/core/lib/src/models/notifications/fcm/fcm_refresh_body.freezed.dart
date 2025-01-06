// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_refresh_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FCMRefreshBody _$FCMRefreshBodyFromJson(Map<String, dynamic> json) {
  return _FCMRefreshBody.fromJson(json);
}

/// @nodoc
mixin _$FCMRefreshBody {
  String get token => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FCMRefreshBodyCopyWith<FCMRefreshBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMRefreshBodyCopyWith<$Res> {
  factory $FCMRefreshBodyCopyWith(
          FCMRefreshBody value, $Res Function(FCMRefreshBody) then) =
      _$FCMRefreshBodyCopyWithImpl<$Res, FCMRefreshBody>;
  @useResult
  $Res call({String token, String device});
}

/// @nodoc
class _$FCMRefreshBodyCopyWithImpl<$Res, $Val extends FCMRefreshBody>
    implements $FCMRefreshBodyCopyWith<$Res> {
  _$FCMRefreshBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMRefreshBodyImplCopyWith<$Res>
    implements $FCMRefreshBodyCopyWith<$Res> {
  factory _$$FCMRefreshBodyImplCopyWith(_$FCMRefreshBodyImpl value,
          $Res Function(_$FCMRefreshBodyImpl) then) =
      __$$FCMRefreshBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String device});
}

/// @nodoc
class __$$FCMRefreshBodyImplCopyWithImpl<$Res>
    extends _$FCMRefreshBodyCopyWithImpl<$Res, _$FCMRefreshBodyImpl>
    implements _$$FCMRefreshBodyImplCopyWith<$Res> {
  __$$FCMRefreshBodyImplCopyWithImpl(
      _$FCMRefreshBodyImpl _value, $Res Function(_$FCMRefreshBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? device = null,
  }) {
    return _then(_$FCMRefreshBodyImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
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
class _$FCMRefreshBodyImpl implements _FCMRefreshBody {
  _$FCMRefreshBodyImpl({required this.token, required this.device});

  factory _$FCMRefreshBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMRefreshBodyImplFromJson(json);

  @override
  final String token;
  @override
  final String device;

  @override
  String toString() {
    return 'FCMRefreshBody(token: $token, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMRefreshBodyImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMRefreshBodyImplCopyWith<_$FCMRefreshBodyImpl> get copyWith =>
      __$$FCMRefreshBodyImplCopyWithImpl<_$FCMRefreshBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMRefreshBodyImplToJson(
      this,
    );
  }
}

abstract class _FCMRefreshBody implements FCMRefreshBody {
  factory _FCMRefreshBody(
      {required final String token,
      required final String device}) = _$FCMRefreshBodyImpl;

  factory _FCMRefreshBody.fromJson(Map<String, dynamic> json) =
      _$FCMRefreshBodyImpl.fromJson;

  @override
  String get token;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$FCMRefreshBodyImplCopyWith<_$FCMRefreshBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
