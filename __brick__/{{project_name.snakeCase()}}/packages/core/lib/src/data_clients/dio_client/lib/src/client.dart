// ignore_for_file: avoid_unused_constructor_parameters

import 'package:core/core.dart';
import 'package:core/src/data_clients/dio_client/lib/dio_client.dart';
import 'package:core/src/data_clients/dio_client/lib/src/interceptors/idempotent/idempotent_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// {@template dio_client}
/// Http client for handling remote API
/// {@endtemplate}
class DioClient {
  /// Creates a [DioClient] with the given [baseUrl] to correctly configure the
  /// [Dio] client.
  /// [getLocalCode] is a required parameter to set up [LocalesInterceptor]
  /// [getToken] is a required parameter to set up [AuthInterceptor]
  factory DioClient({
    required final String baseUrl,
    required final AsyncValueGetter<String> getLocalCode,
    required final AsyncValueGetter<String?> getToken,
    required final AsyncValueGetter<String> getThemeMode,
    required final ValueGetter<String> getVersion,
  }) {
    final Dio dio = Dio(
      BaseOptions(
        contentType: 'application/json',
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 4),
        receiveTimeout: const Duration(seconds: 15),
      ),
    );

    dio.interceptors.addAll([
      LocalesInterceptor(getLocalCode: getLocalCode),
      AuthInterceptor(getToken: getToken),
      QueuedInterceptor(),
      DeviceInfoInterceptor(getDeviceInfo: getVersion),
      ThemeInterceptor(getThemeMode: getThemeMode),
      LogInterceptor(responseBody: true, requestBody: true),
      IdempotencyInterceptor(),
      FirebaseDioInterceptor(),
      RetryInterceptor(
        dio: dio,
        logPrint: (final log) => log.log(),
        retryDelays: const [
          Duration(milliseconds: 500), // wait 1 sec before first retry
          Duration(seconds: 1), // wait 2 sec before second retry
          Duration(seconds: 2), // wait 3 sec before third retry
        ],
      ),
    ]);

    return DioClient._internal(
      dioCliet: dio,
    );
  }

  /// Creates a [DioClient] with the given [dioClient].
  DioClient._internal({
    required final Dio dioCliet,
  }) : client = dioCliet;

  /// Dio client for handling remote API
  late final Dio client;
}
