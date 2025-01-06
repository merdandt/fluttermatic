// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JwtToken _$JwtTokenFromJson(Map<String, dynamic> json) {
  return _JwtToken.fromJson(json);
}

/// @nodoc
mixin _$JwtToken {
  @JsonKey(name: 'access_token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtTokenCopyWith<JwtToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtTokenCopyWith<$Res> {
  factory $JwtTokenCopyWith(JwtToken value, $Res Function(JwtToken) then) =
      _$JwtTokenCopyWithImpl<$Res, JwtToken>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String token,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$JwtTokenCopyWithImpl<$Res, $Val extends JwtToken>
    implements $JwtTokenCopyWith<$Res> {
  _$JwtTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiresIn = null,
    Object? tokenType = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtTokenImplCopyWith<$Res>
    implements $JwtTokenCopyWith<$Res> {
  factory _$$JwtTokenImplCopyWith(
          _$JwtTokenImpl value, $Res Function(_$JwtTokenImpl) then) =
      __$$JwtTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String token,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$JwtTokenImplCopyWithImpl<$Res>
    extends _$JwtTokenCopyWithImpl<$Res, _$JwtTokenImpl>
    implements _$$JwtTokenImplCopyWith<$Res> {
  __$$JwtTokenImplCopyWithImpl(
      _$JwtTokenImpl _value, $Res Function(_$JwtTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expiresIn = null,
    Object? tokenType = null,
    Object? refreshToken = null,
  }) {
    return _then(_$JwtTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtTokenImpl implements _JwtToken {
  _$JwtTokenImpl(
      {@JsonKey(name: 'access_token') required this.token,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$JwtTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtTokenImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String token;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'JwtToken(token: $token, expiresIn: $expiresIn, tokenType: $tokenType, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, expiresIn, tokenType, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      __$$JwtTokenImplCopyWithImpl<_$JwtTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtTokenImplToJson(
      this,
    );
  }
}

abstract class _JwtToken implements JwtToken {
  factory _JwtToken(
          {@JsonKey(name: 'access_token') required final String token,
          @JsonKey(name: 'expires_in') required final int expiresIn,
          @JsonKey(name: 'token_type') required final String tokenType,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$JwtTokenImpl;

  factory _JwtToken.fromJson(Map<String, dynamic> json) =
      _$JwtTokenImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get token;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$JwtTokenImplCopyWith<_$JwtTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
