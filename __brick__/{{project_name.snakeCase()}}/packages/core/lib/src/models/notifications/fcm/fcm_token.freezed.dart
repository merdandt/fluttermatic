// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FcmToken _$FcmTokenFromJson(Map<String, dynamic> json) {
  return _FcmToken.fromJson(json);
}

/// @nodoc
mixin _$FcmToken {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FcmTokenCopyWith<FcmToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmTokenCopyWith<$Res> {
  factory $FcmTokenCopyWith(FcmToken value, $Res Function(FcmToken) then) =
      _$FcmTokenCopyWithImpl<$Res, FcmToken>;
  @useResult
  $Res call({String token, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class _$FcmTokenCopyWithImpl<$Res, $Val extends FcmToken>
    implements $FcmTokenCopyWith<$Res> {
  _$FcmTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmTokenImplCopyWith<$Res>
    implements $FcmTokenCopyWith<$Res> {
  factory _$$FcmTokenImplCopyWith(
          _$FcmTokenImpl value, $Res Function(_$FcmTokenImpl) then) =
      __$$FcmTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, @JsonKey(name: 'user_id') String userId});
}

/// @nodoc
class __$$FcmTokenImplCopyWithImpl<$Res>
    extends _$FcmTokenCopyWithImpl<$Res, _$FcmTokenImpl>
    implements _$$FcmTokenImplCopyWith<$Res> {
  __$$FcmTokenImplCopyWithImpl(
      _$FcmTokenImpl _value, $Res Function(_$FcmTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = null,
  }) {
    return _then(_$FcmTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmTokenImpl implements _FcmToken {
  _$FcmTokenImpl(
      {required this.token, @JsonKey(name: 'user_id') required this.userId});

  factory _$FcmTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmTokenImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'FcmToken(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmTokenImplCopyWith<_$FcmTokenImpl> get copyWith =>
      __$$FcmTokenImplCopyWithImpl<_$FcmTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmTokenImplToJson(
      this,
    );
  }
}

abstract class _FcmToken implements FcmToken {
  factory _FcmToken(
      {required final String token,
      @JsonKey(name: 'user_id') required final String userId}) = _$FcmTokenImpl;

  factory _FcmToken.fromJson(Map<String, dynamic> json) =
      _$FcmTokenImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$FcmTokenImplCopyWith<_$FcmTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
