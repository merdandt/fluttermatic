import 'dart:async';

import 'package:dio/dio.dart';

class DefaultRetryEvaluator {
  DefaultRetryEvaluator(this._retryableStatuses);

  final Set<int> _retryableStatuses;
  int currentAttempt = 0;

  /// Returns true only if the response hasn't been cancelled
  ///   or got a bad status code.
  FutureOr<bool> evaluate(final DioException error, final int attempt) {
    final bool shouldRetry = error.type != DioExceptionType.cancel &&
        error.error is! FormatException &&
        error.type != DioExceptionType.badResponse;

    final isNetwork = isNetworkException(error);
    if (isNetwork) {
      return true;
    }

    // shouldRetry = isNetwork ||
    //     error.type != DioExceptionType.cancel &&
    //         error.error is! FormatException;

    // if (error.type == DioExceptionType.badResponse) {
    //   final statusCode = error.response?.statusCode;
    //   shouldRetry = isRetryable(statusCode);
    // } else {
    //   shouldRetry = error.type != DioExceptionType.cancel &&
    //       error.error is! FormatException;
    // }
    currentAttempt = attempt;

    return shouldRetry;
  }

  bool isRetryable(final int? statusCode) {
    if (statusCode == null) {
      return true;
    }

    return _retryableStatuses.contains(statusCode);
  }

  static bool isNetworkException(final DioException dioError) =>
      dioError.type == DioExceptionType.connectionError ||
      dioError.type == DioExceptionType.receiveTimeout ||
      dioError.type == DioExceptionType.sendTimeout ||
      dioError.type == DioExceptionType.connectionTimeout;
}
