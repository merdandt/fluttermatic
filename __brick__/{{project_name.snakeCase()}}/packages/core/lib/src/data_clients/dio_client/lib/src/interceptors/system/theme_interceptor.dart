import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Adds theme information to Dio requests, such as 'dark' or 'light'.
class ThemeInterceptor extends Interceptor {
  const ThemeInterceptor({required this.getThemeMode});
  final AsyncValueGetter<String> getThemeMode;

  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    try {
      final themeMode = await getThemeMode();
      options.headers['theme'] = themeMode;
    } on Object catch (_) {
      options.headers['theme'] = 'light';
    }
    super.onRequest(options, handler);
  }
}
