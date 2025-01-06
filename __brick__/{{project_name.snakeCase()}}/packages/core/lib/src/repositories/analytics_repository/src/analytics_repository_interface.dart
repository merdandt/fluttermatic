import 'package:core/core.dart';

abstract class AnalyticsRepository {
  /// {@macro analytics_repository_inteface}

  /// Tracks the provided [AnalyticsEvent].
  Future<void> track(final AnalyticsEvent event);

  /// Set identifier
  Future<void> setId(final String? id);
}
