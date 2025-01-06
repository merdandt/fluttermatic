import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_token.freezed.dart';
part 'fcm_token.g.dart';

@freezed
class FcmToken with _$FcmToken {
  factory FcmToken({
    required final String token,
    @JsonKey(name: 'user_id') required final String userId,
  }) = _FcmToken;

  factory FcmToken.fromJson(final Map<String, dynamic> json) =>
      _$FcmTokenFromJson(json);
}
