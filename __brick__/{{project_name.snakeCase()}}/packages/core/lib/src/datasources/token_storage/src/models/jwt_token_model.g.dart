// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtTokenImpl _$$JwtTokenImplFromJson(Map<String, dynamic> json) =>
    _$JwtTokenImpl(
      token: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      tokenType: json['token_type'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$JwtTokenImplToJson(_$JwtTokenImpl instance) =>
    <String, dynamic>{
      'access_token': instance.token,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
    };
