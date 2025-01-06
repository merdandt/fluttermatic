import 'package:dio/dio.dart';

class DioExceptionHandler implements Exception {
  DioExceptionHandler.fromDioError({
    required final DioException dioError,
  }) : message = _getMessage(dioError);
  final String message;

  static String _getMessage(final DioException dioError) =>
      switch (dioError.type) {
        DioExceptionType.cancel => 'Request to the server was cancelled.',
        DioExceptionType.connectionTimeout => 'Connection timed out.',
        DioExceptionType.receiveTimeout => 'Receiving timeout occurred.',
        DioExceptionType.sendTimeout => 'Request send timeout.',
        DioExceptionType.badResponse =>
          _handleStatusCode(dioError.response?.statusCode),
        DioExceptionType.connectionError => 'No Internet.',
        DioExceptionType.badCertificate => 'Bad Certificate',
        DioExceptionType.unknown => '',
      };

  static String _handleStatusCode(final int? statusCode) =>
      switch (statusCode) {
        400 => 'Bad request.',
        401 => 'Authentication failed.',
        403 => 'The authenticated user is not allowed to access the endpoint.',
        404 => 'The requested resource does not exist.',
        405 => 'Method not allowed.',
        415 => 'Unsupported media type.',
        422 => 'Data validation failed.',
        429 => 'Too many requests.',
        500 => 'Internal server error.',
        _ => 'Oops something went wrong!',
      };

  static bool isNetworkException(final DioException dioError) =>
      dioError.type == DioExceptionType.connectionError ||
      dioError.type == DioExceptionType.receiveTimeout ||
      dioError.type == DioExceptionType.sendTimeout ||
      dioError.type == DioExceptionType.connectionTimeout;

  static bool isAuthException(final DioException dioError) =>
      dioError.response?.statusCode == 401;
}
