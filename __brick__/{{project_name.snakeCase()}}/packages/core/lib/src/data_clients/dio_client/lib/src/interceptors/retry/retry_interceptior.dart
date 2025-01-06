import 'package:core/core.dart';
import 'package:core/src/data_clients/dio_client/dio_client.dart';
import 'package:dio/dio.dart';

class RetryOnTimeoutInterceptor extends Interceptor {
  RetryOnTimeoutInterceptor({
    required this.dio,
    this.retryCount = 3,
    this.retryInterval = const Duration(seconds: 1),
  });
  final Dio dio;
  final int retryCount;
  final Duration retryInterval;

  @override
  Future<void> onError(
    final DioException err,
    final ErrorInterceptorHandler handler,
  ) async {
    if (_shouldRetry(err)) {
      final RequestOptions requestOptions = err.requestOptions;

      for (int attempt = 0; attempt < retryCount; attempt++) {
        '*******Retrying $attempt times'.log();
        try {
          await Future.delayed(retryInterval);
          final Response response = await dio.fetch(requestOptions);
          handler.resolve(response);

          return;
        } on DioException catch (newErr) {
          if (attempt >= retryCount - 1 || !_shouldRetry(newErr)) {
            handler.next(newErr);

            return;
          }
        }
      }
    }

    handler.next(err);
  }

  bool _shouldRetry(final DioException err) =>
      DioExceptionHandler.isNetworkException(err);
}
