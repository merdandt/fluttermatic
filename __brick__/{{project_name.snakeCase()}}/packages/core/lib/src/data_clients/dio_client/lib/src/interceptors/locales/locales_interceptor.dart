// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart'
    show Interceptor, RequestInterceptorHandler, RequestOptions;
import 'package:flutter/foundation.dart';

/// {@template locales_interceptor}
/// Interceptor that adds the local code to the request header.
/// If the header has the [noLocal] key then the local code will not be added.
///
/// Example:
/// ```
/// @GET('/data')
/// @Headers(<String, dynamic>{
///   'Content-Type': 'application/json',
///   LocalesInterceptor.noLocal: true,
/// })
/// Future<MyData> fetchData();
/// ```
///
/// Use `LocalesInterceptor` in `Dio` instance:
/// ```
/// final dio = Dio();
/// dio.interceptors.add(LocalesInterceptor(
///   getLocalCode: () => myLocaleProvider.currentLocaleCode,
/// ));
/// ```
/// Where `myLocaleProvider.currentLocaleCode` should return a string with
/// the current locale code.
/// {@endtemplate}
class LocalesInterceptor extends Interceptor {
  /// Static field that defines if the local code
  /// has to be added to the request or not.
  static const noLocal = '_notRequiresLocal_';

  /// {@macro locales_interceptor}
  const LocalesInterceptor({
    required this.getLocalCode,
  });

  final AsyncValueGetter<String> getLocalCode;

  @override
  Future<void> onRequest(
    final RequestOptions options,
    final RequestInterceptorHandler handler,
  ) async {
    if (options.headers.containsKey(noLocal)) {
      options.headers.remove(noLocal);

      return super.onRequest(options, handler);
    }
    try {
      // Get the current locale code in order to
      // pass codes like: 'ru', 'tm', or 'en'
      final localCode = await getLocalCode();
      options.headers['Accept-Language'] = localCode;
    } on Object {
      options.headers['Accept-Language'] = 'en'; // Fallback locale
    }

    return super.onRequest(options, handler);
  }
}
