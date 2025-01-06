import 'package:flutter/material.dart';
import '../../{{project_name.snakeCase()}}_ui.dart';


//extension for font weights

abstract class {{short_name.upperCase()}}TextStyle {
  /// Base Text Style
  static const baseTextStyle = TextStyle(
    package: '{{#snakeCase}}{{project_name}}{{/snakeCase}}_ui',
    fontWeight: {{short_name.upperCase()}}FontWeight.regular,
    fontFamily: 'NotoSansDisplay',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );
  

/// Display Large 30.0/40 Text Style
  static final TextStyle displayLarge = baseTextStyle.copyWith(
    fontSize: 30,
    height: 40 / 30,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Display Medium 24.0/32 Text Style
  static final TextStyle displayMedium = baseTextStyle.copyWith(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Display Small 20.0/28 Text Style
  static final TextStyle displaySmall = baseTextStyle.copyWith(
    fontSize: 20,
    height: 28 / 20,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Header Large 18.0/26 Text Style
  static final TextStyle headLineLarge = baseTextStyle.copyWith(
    fontSize: 18,
    height: 26 / 18,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Header Medium 18.0/26, fontWeight differs Text Style
  static final TextStyle headLineMedium = baseTextStyle.copyWith(
    fontSize: 18,
    height: 26 / 18,
    fontWeight: {{short_name.upperCase()}}FontWeight.semiBold,
  );

  /// Headline 24.0/16 Text Style
  static final TextStyle headLineSmall = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Title Large 28.0/20 Text Style
  static final TextStyle titleLarge = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: {{short_name.upperCase()}}FontWeight.semiBold,
  );

  /// Title Medium 20.0/14 Text Style Bold
  static final TextStyle titleMedium = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Title Small 20.0/14 Text Style SemiBold
  static final TextStyle titleSmall = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: {{short_name.upperCase()}}FontWeight.semiBold,
  );

  /// Label Large 20.0/14 Text Style Medium
  static final TextStyle labelLarge = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: {{short_name.upperCase()}}FontWeight.medium,
  );

  /// Label Medium 18.0/12 Text Style
  static final TextStyle labelMedium = baseTextStyle.copyWith(
    fontSize: 12,
    height: 18 / 12,
    fontWeight: {{short_name.upperCase()}}FontWeight.bold,
  );

  /// Title Large 18.0/11 Text Style
  static final TextStyle labelSmall = baseTextStyle.copyWith(
    fontSize: 11,
    height: 18 / 11,
    fontWeight: {{short_name.upperCase()}}FontWeight.semiBold,
  );

  /// Body Large 24.0/16 Text Style
  static final TextStyle bodyLarge = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: {{short_name.upperCase()}}FontWeight.medium,
  );

  /// Body Medium 20.0/14 Text Style
  static final TextStyle bodyMedium = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
  );

  /// Body Medium 16.0/12 Text Style
  static final TextStyle bodySmall = baseTextStyle.copyWith(
    fontSize: 12,
    height: 18 / 12,
    fontWeight: {{short_name.upperCase()}}FontWeight.medium,
  );

}
