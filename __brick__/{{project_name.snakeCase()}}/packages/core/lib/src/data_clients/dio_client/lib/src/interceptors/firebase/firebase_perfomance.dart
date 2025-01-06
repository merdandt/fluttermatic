import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';

class FirebaseDioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    final HttpMetric metric = FirebasePerformance.instance.newHttpMetric(
      options.uri.toString(),
      _getHttpMethod(options.method),
    );

    // Start the metric
    await metric.start();

    // Add metric to the request's extra to use it later
    options.extra['firebase_http_metric'] = metric;

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    final Response response,
    final ResponseInterceptorHandler handler,
  ) async {
    // Retrieve the HttpMetric from the request's extra
    final HttpMetric? metric =
        response.requestOptions.extra['firebase_http_metric'] as HttpMetric?;

    if (metric != null) {
      // Set metrics and attributes
      metric
        ..httpResponseCode = response.statusCode
        ..responsePayloadSize = response.data.toString().length
        ..responseContentType = response.headers.value('Content-Type');

      // Stops the metric. Data is sent to Firebase server here.
      await metric.stop();
    }

    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    final DioException err,
    final ErrorInterceptorHandler handler,
  ) async {
    // Retrieve the HttpMetric from the request's extra
    final HttpMetric? metric = err
        .response?.requestOptions.extra['firebase_http_metric'] as HttpMetric?;

    if (metric != null) {
      // Set metrics and attributes
      metric
        ..httpResponseCode = err.response?.statusCode
        ..responsePayloadSize = err.response?.data.toString().length
        ..responseContentType = err.response?.headers.value('Content-Type');

      await metric.stop();
    }

    return super.onError(err, handler);
  }
}

HttpMethod _getHttpMethod(final String method) => HttpMethod.values.firstWhere(
      (final element) => element.name.toUpperCase() == method.toUpperCase(),
      orElse: () => HttpMethod.Trace,
    );
