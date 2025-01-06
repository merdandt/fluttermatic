import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/widgets.dart';

extension TextThemeExtension on TextStyle {
  /// FontWeight value of `w900`
  TextStyle get blak => copyWith(fontWeight: UIFontWeight.black);

  /// FontWeight value of `w800`
  TextStyle get extraBold => copyWith(fontWeight: UIFontWeight.extraBold);

  /// FontWeight value of `w700`
  TextStyle get bold => copyWith(fontWeight: UIFontWeight.bold);

  /// FontWeight value of `w600`
  TextStyle get semiBold => copyWith(fontWeight: UIFontWeight.semiBold);

  /// FontWeight value of `w500`
  TextStyle get medium => copyWith(fontWeight: UIFontWeight.medium);

  /// FontWeight value of `w400`
  TextStyle get regular => copyWith(fontWeight: UIFontWeight.regular);

  /// FontWeight value of `w300`
  TextStyle get light => copyWith(fontWeight: UIFontWeight.light);

  /// FontWeight value of `w200`
  TextStyle get extraLight => copyWith(fontWeight: UIFontWeight.extraLight);

  /// FontWeight value of `w100`
  TextStyle get thin => copyWith(fontWeight: UIFontWeight.thin);

  /// FontStyle for `italic`
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  /// FontStyle for `underline`
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  /// FontStyle for `lineThrough`
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  /// FontStyle for `overline`
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);
}
