import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_event.freezed.dart';
part 'analytics_event.g.dart';

/// {@template analytics_event}
/// Analytics event which will be tracked.
/// {@endtemplate}
@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  /// {@macro analytics_event}
  factory AnalyticsEvent({
    /// Unique event name.
    required final String name,

    /// Optional map of event properties.
    final Map<String, Object>? properties,
  }) = _AnalyticsEvent;

  factory AnalyticsEvent.fromJson(final Map<String, dynamic> json) =>
      _$AnalyticsEventFromJson(json);
}

/// Mixin for tracking analytics events.
mixin AnalyticsEventMixin on Object {
  /// Analytics event which will be tracked.
  AnalyticsEvent get event;
}
