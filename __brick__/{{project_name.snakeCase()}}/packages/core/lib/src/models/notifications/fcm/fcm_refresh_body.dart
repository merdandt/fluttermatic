import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_refresh_body.freezed.dart';
part 'fcm_refresh_body.g.dart';

@freezed
class FCMRefreshBody with _$FCMRefreshBody {
  factory FCMRefreshBody({
    required final String token,
    required final String device,
  }) = _FCMRefreshBody;

  factory FCMRefreshBody.fromJson(final Map<String, dynamic> json) =>
      _$FCMRefreshBodyFromJson(json);
}
