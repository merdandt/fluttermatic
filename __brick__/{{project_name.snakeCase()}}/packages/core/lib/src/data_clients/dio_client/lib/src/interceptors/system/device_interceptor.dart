import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Adds device information to Dio requests, like platform and model.
class DeviceInfoInterceptor extends Interceptor {
  const DeviceInfoInterceptor({required this.getDeviceInfo});
  final ValueGetter<String> getDeviceInfo;

  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    try {
      final platform = Platform.isAndroid
          ? 'Android'
          : Platform.isIOS
              ? 'iOS'
              : 'Unknown';
      final deviceInfo = getDeviceInfo();

      options.headers['platform'] = platform;
      options.headers['version'] = deviceInfo; // Fallback device info
    } on Object catch (_) {
      options.headers['platform'] = 'Unknown';
      options.headers['version'] = 'Unknown'; // Fallback device info
    }
    super.onRequest(options, handler);
  }
}
