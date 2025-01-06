import 'package:logger/logger.dart';

final Logger _logger = Logger();

void d(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.d(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );

void e(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.e(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );

void f(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.f(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );

void i(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.i(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );

void t(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.t(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );

void w(
  final dynamic message, {
  final DateTime? time,
  final Object? error,
  final StackTrace? stackTrace,
}) =>
    _logger.w(
      message,
      error: error,
      time: time,
      stackTrace: stackTrace,
    );
