import 'package:core/core.dart';

/// {@template analytics_repository}
/// Repository which manages tracking analytics.
/// {@endtemplate}
class FirebaseAnalyticsRepository extends AnalyticsRepository {
  /// {@macro analytics_repository}
  FirebaseAnalyticsRepository(final FirebaseAnalytics analytics)
      : _analytics = analytics;

  final FirebaseAnalytics _analytics;

  /// Tracks the provided [AnalyticsEvent].
  @override
  Future<void> track(final AnalyticsEvent event) async {
    try {
      await _analytics.logEvent(
        name: event.name,
        parameters: event.properties,
      );
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        TrackEventFailure(message: error.toString()),
        stackTrace,
      );
    }
  }

  /// Sets the user identifier associated with tracked events.
  ///
  /// Setting a null [userId] will clear the user identifier.
  @override
  Future<void> setId(final String? id) async {
    try {
      await _analytics.setUserId(id: id);
    } on Exception catch (error, stackTrace) {
      throw Error.throwWithStackTrace(
        SetUserIdFailure(message: error.toString()),
        stackTrace,
      );
    }
  }
}
