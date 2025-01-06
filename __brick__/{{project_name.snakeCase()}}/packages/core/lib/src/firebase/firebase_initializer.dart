import 'dart:isolate';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart'
    show DiagnosticsNode, FlutterErrorDetails, PlatformDispatcher;

class FirebaseInitializer {
  FirebaseInitializer({
    required this.firebaseOptions,
    required this.isEnabled,
    this.name,
  });

  final FirebaseOptions firebaseOptions;
  final bool isEnabled;
  final String? name;

  Future<void> onLoad() async {
    await Firebase.initializeApp(
      options: firebaseOptions,
      name: name,
    );
    if (isEnabled) {
      // You could additionally extend this to allow users to opt-in.
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(isEnabled);

      Isolate.current.addErrorListener(
        RawReceivePort((final pair) async {
          final List<dynamic> errorAndStacktrace = pair;
          await FirebaseCrashlytics.instance.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last,
            fatal: true,
          );
        }).sendPort,
      );
      // Pass all uncaught asynchronous errors that aren't handled by the
      // Flutter framework to Crashlytics
      final onError = PlatformDispatcher.instance.onError;
      PlatformDispatcher.instance.onError = (final error, final stack) {
        recordError(error, stack, fatal: true);

        return onError?.call(error, stack) ?? true;
      };
    }
  }

  Future<void> recordError(
    final dynamic exception,
    final StackTrace? stack, {
    final dynamic reason,
    final Iterable<DiagnosticsNode> information = const [],
    final bool fatal = false,
    final bool? printDetails,
  }) async {
    if (!isEnabled) return;
    await FirebaseCrashlytics.instance.recordError(
      exception,
      stack,
      fatal: fatal,
      information: information,
      printDetails: printDetails,
      reason: reason,
    );
  }

  Future<void> recordFlutterError(
    final FlutterErrorDetails flutterErrorDetails, {
    final bool fatal = false,
  }) async {
    if (!isEnabled) return;
    if (fatal) {
      await FirebaseCrashlytics.instance
          .recordFlutterFatalError(flutterErrorDetails);
    } else {
      await FirebaseCrashlytics.instance.recordFlutterError(
        flutterErrorDetails,
        fatal: fatal,
      );
    }
  }
}
