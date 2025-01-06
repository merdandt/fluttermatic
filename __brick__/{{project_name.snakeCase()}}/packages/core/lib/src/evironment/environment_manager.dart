// ignore_for_file: do_not_use_environment

import 'package:flutter/foundation.dart';

class EnvironmentManager {
  EnvironmentManager._();

  static const websiteShortUrl = '';
  static const moreAboutPaidPlanUrl = '';
  static const locationIqToken = '';
  static const endpoint = String.fromEnvironment('ENDPOINT');
  static const appleClientId = String.fromEnvironment('APPLE_CLIENT_ID');
  static Uri get appleRedirectUri =>
      Uri.parse(const String.fromEnvironment('APPLE_CALLBACK_URI'));
  static String get googleServerClientId =>
      const String.fromEnvironment('GOOGLE_SERVER_CLIENT_ID');
  static String get stripePublishableKeyTest =>
      const String.fromEnvironment('STRIPE_PUBLISHABLE_KEY_TEST');
  static String get stripePublishableKeyLive =>
      const String.fromEnvironment('STRIPE_PUBLISHABLE_KEY_LIVE');
  static bool get isStripePublishableLiveKeyUsed => kDebugMode;
  static const stripeMerchantDisplayName = 'Highend';
}
