import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_fcm_body.freezed.dart';
part 'update_fcm_body.g.dart';

@Freezed(toJson: true)
class UpdateFCMBody with _$UpdateFCMBody {
  factory UpdateFCMBody({
    @JsonKey(name: 'fcm_token') required final String fcmToken,
    required final String device,
  }) = _UpdateFCMBody;

  factory UpdateFCMBody.fromJson(final Map<String, dynamic> json) =>
      _$UpdateFCMBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$$UpdateFCMBodyImplToJson(this as _$UpdateFCMBodyImpl);
}
