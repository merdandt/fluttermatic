import 'package:flutter/material.dart';
import '../../{{project_name.snakeCase()}}_ui.dart';

//extension for font weights

abstract class UITextStyle {
  /// Base Text Style
  static const baseTextStyle = TextStyle(
    package: '{{#snakeCase}}{{project_name}}{{/snakeCase}}_ui',
    fontWeight: UIFontWeight.regular,
    fontFamily: 'NotoSansDisplay',
    decoration: TextDecoration.none,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Display Large 30.0/40 Text Style
  static final TextStyle displayLarge = baseTextStyle.copyWith(
    fontSize: 30,
    height: 40 / 30,
    fontWeight: UIFontWeight.bold,
  );

  /// Display Medium 24.0/32 Text Style
  static final TextStyle displayMedium = baseTextStyle.copyWith(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: UIFontWeight.bold,
  );

  /// Display Small 20.0/28 Text Style
  static final TextStyle displaySmall = baseTextStyle.copyWith(
    fontSize: 20,
    height: 28 / 20,
    fontWeight: UIFontWeight.bold,
  );

  /// Header Large 18.0/26 Text Style
  static final TextStyle headLineLarge = baseTextStyle.copyWith(
    fontSize: 18,
    height: 26 / 18,
    fontWeight: UIFontWeight.bold,
  );

  /// Header Medium 18.0/26, fontWeight differs Text Style
  static final TextStyle headLineMedium = baseTextStyle.copyWith(
    fontSize: 18,
    height: 26 / 18,
    fontWeight: UIFontWeight.semiBold,
  );

  /// Headline 24.0/16 Text Style
  static final TextStyle headLineSmall = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: UIFontWeight.bold,
  );

  /// Title Large 28.0/20 Text Style
  static final TextStyle titleLarge = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: UIFontWeight.semiBold,
  );

  /// Title Medium 20.0/14 Text Style Bold
  static final TextStyle titleMedium = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: UIFontWeight.bold,
  );

  /// Title Small 20.0/14 Text Style SemiBold
  static final TextStyle titleSmall = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: UIFontWeight.semiBold,
  );

  /// Label Large 20.0/14 Text Style Medium
  static final TextStyle labelLarge = baseTextStyle.copyWith(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: UIFontWeight.medium,
  );

  /// Label Medium 18.0/12 Text Style
  static final TextStyle labelMedium = baseTextStyle.copyWith(
    fontSize: 12,
    height: 18 / 12,
    fontWeight: UIFontWeight.bold,
  );

  /// Title Large 18.0/11 Text Style
  static final TextStyle labelSmall = baseTextStyle.copyWith(
    fontSize: 11,
    height: 18 / 11,
    fontWeight: UIFontWeight.semiBold,
  );

  /// Body Large 24.0/16 Text Style
  static final TextStyle bodyLarge = baseTextStyle.copyWith(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: UIFontWeight.medium,
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
    fontWeight: UIFontWeight.medium,
  );
}
