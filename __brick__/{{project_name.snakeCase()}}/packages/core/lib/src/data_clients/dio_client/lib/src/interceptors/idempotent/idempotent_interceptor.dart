// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart'
    show Interceptor, RequestInterceptorHandler, RequestOptions;
import 'package:uuid/uuid.dart';

/// {@template idempotency_interceptor}
/// Interceptor that adds an idempotency key to the request header.
/// This key is used to prevent duplicate requests from creating unwanted side
/// effects on the server.
///
/// Use `IdempotencyInterceptor` in `Dio` instance:
/// ```
/// final dio = Dio();
/// dio.interceptors.add(IdempotencyInterceptor());
/// ```
/// {@endtemplate}
class IdempotencyInterceptor extends Interceptor {
  /// The header key for the idempotency key
  static const idempotencyKeyHeader = 'Idempotency-Key';

  /// {@macro idempotency_interceptor}
  IdempotencyInterceptor();

  @override
  void onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) {
    // Add the idempotency key header only for POST requests
    if (options.method.toUpperCase() == 'POST') {
      final uuid = const Uuid().v4();
      options.headers[idempotencyKeyHeader] = uuid;
    }

    super.onRequest(options, handler);
  }
}
