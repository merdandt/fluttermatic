import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// {@template auth_interceptor}
/// Interceptor that adds the auth token to the request header if
/// the header has the [needAuth] key.
///
/// Example:
/// ```dart
/// @GET('/tasks')
/// @Headers(<String, dynamic>{
///   'Content-Type': 'application/json',=
///   AuthInterceptor.needAuth: true,
/// })
/// Future<Task> getTasks();
/// ```
/// {@endtemplate}
class AuthInterceptor extends Interceptor {
  /// {@macro auth_interceptor}
  const AuthInterceptor({
    required this.getToken,
  });

  /// Key used to conditionally exclude auth token in the headers.
  static const noAuth = '_noTokenRequires_';

  /// Function to asynchronously retrieve the auth token.
  final AsyncValueGetter<String?> getToken;

  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    if (options.headers.containsKey(noAuth)) {
      options.headers.remove(noAuth);

      return handler.next(options);
    }

    try {
      final token = await getToken();
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    } on Object {
      // Handle any error that occurs during token retrieval.
      handler.reject(
        DioException(
          requestOptions: options,
          error: 'Token retrieval failed',
        ),
      );

      return;
    }

    handler.next(options);
  }
}
