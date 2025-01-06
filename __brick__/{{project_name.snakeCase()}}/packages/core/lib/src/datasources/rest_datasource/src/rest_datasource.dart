// ignore_for_file: lines_longer_than_80_chars

import 'dart:ui';

import 'package:core/core.dart';
import 'package:dio/dio.dart';

/// {@template rest_api}
/// Rest client for handling remote API over HTTP.
/// Utilizes [RestApiClient] to perform network requests.
/// {@endtemplate}
class RestDatasource {
  /// Creates a [RestDatasource] with the given [dioClient].
  ///
  /// [dioClient] is a required parameter to ensure the RestDatasource
  /// is correctly configured with an HTTP client.
  RestDatasource({
    required this.onUnauthorized,
    required this.dioClient,
    required final TokenStorage tokenStorage,
  })  : _client = RestApiClient(
          // Dio(BaseOptions(baseUrl: dioClient.client.options.baseUrl)),
          dioClient.client,
        ),
        _tokenStorage = tokenStorage;

  final DioClient dioClient;
  final RestApiClient _client;
  final TokenStorage _tokenStorage;
  final VoidCallback onUnauthorized;

  /// Generic method to handle API calls and errors.
  ///
  /// Takes a function [call] that returns a Future. This method
  /// captures any errors during the API call and throws specific
  /// exceptions based on the error type.
  Future<T> _handleApiCall<T>(final Future<T> Function() call) async {
    try {
      return await call();
    } on DioException catch (dioError) {
      if (DioExceptionHandler.isNetworkException(dioError)) {
        throw InternetConnectionException(message: 'No internet connection');
      }
      if (DioExceptionHandler.isAuthException(dioError)) {
        // final isRefreshed = await refreshToken();
        // if (isRefreshed) {
        //   return call();
        // } else {
        //   onUnauthorized();
        //   throw UnauthorizedException(
        //     message: 'Session expired. Please log in again.',
        //   );
        // }
      }
      throw exceptionParser(dioError.response?.data);
    } on FormatException catch (e) {
      '$e FORMAT'.log();

      throw OtherException(message: e.message);
    } on Object catch (error, stackTrace) {
      '$error ERROR'.log();

      throw OtherException(
        message: 'Failed to complete API call: $error , $stackTrace',
      );
    }
  }

  Future<List<SettingsNotification>> getSettingsNotifications() async {
    final notifications =
        await _handleApiCall(_client.getSettingsNotifications);

    return notifications.data;
  }

  Future<List<SettingsNotification>> updateSettingsNotifications(
    final List<SettingsNotification> notifications,
  ) async {
    final updated = await _handleApiCall(
      () => _client.updateSettingsNotifications(notifications),
    );

    return updated.data;
  }

  Future<bool> updateFcmToken({
    required final UpdateFCMBody tokenRequestBody,
  }) async {
    final token = await _handleApiCall(
      () => _client.updateFcmToken(
        tokenRequestBody,
      ),
    );

    return token.data.httpOk;
  }

  Future<List<UserNotification>> getUserNotifications({
    required final int page,
  }) async {
    final notifications =
        await _handleApiCall(() => _client.getUserotifications(page));

    return notifications.data;
  }
}
