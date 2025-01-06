import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_token_model.freezed.dart';
part 'jwt_token_model.g.dart';

@freezed
class JwtToken with _$JwtToken {
  factory JwtToken({
    @JsonKey(name: 'access_token') required final String token,
    @JsonKey(name: 'expires_in') required final int expiresIn,
    @JsonKey(name: 'token_type') required final String tokenType,
    @JsonKey(name: 'refresh_token') required final String refreshToken,
  }) = _JwtToken;

  factory JwtToken.fromJson(final Map<String, dynamic> json) =>
      _$JwtTokenFromJson(json);
}
