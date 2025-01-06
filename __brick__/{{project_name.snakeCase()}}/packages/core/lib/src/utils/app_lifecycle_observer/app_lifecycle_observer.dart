import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

/// This class is used to observe the app lifecycle and dispose the
/// [disposables] when the app is detached.
class AppLifecycleObserver<T extends Disposable?>
    extends WidgetsBindingObserver {
  AppLifecycleObserver({required this.disposables});
  final List<T?> disposables;

  @override
  void didChangeAppLifecycleState(final AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      for (final el in disposables) {
        if (el != null) el.dispose();
      }
    }
  }
}
