import 'package:core/core.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api_client.g.dart';

/// {@template rest_api_client}
/// Http client for handling remote API
/// {@endtemplate}
@RestApi()
abstract class RestApiClient {
  factory RestApiClient(final Dio dio, {final String baseUrl}) = _RestApiClient;

  /// Get the list of [SettingsNotification]
  @GET('/api/users/settings/notifications')
  Future<ApiResult<List<SettingsNotification>>> getSettingsNotifications();

  /// Update the list of [SettingsNotification]
  @POST('/api/users/settings/notifications')
  Future<ApiResult<List<SettingsNotification>>> updateSettingsNotifications(
    @Body() final List<SettingsNotification> notifications,
  );

  /// Update a FCM token and provie device id
  @POST('/api/users/settings/device')
  Future<ApiResult<String>> updateFcmToken(
    @Body() final UpdateFCMBody body,
  );

  /// ****** NOTIFICATIONS ******
  /// Get the list of [UserNotification]
  @GET('/api/users/notifications')
  Future<ApiResult<List<UserNotification>>> getUserotifications(
    @Query('page') final int page,
  );
}
