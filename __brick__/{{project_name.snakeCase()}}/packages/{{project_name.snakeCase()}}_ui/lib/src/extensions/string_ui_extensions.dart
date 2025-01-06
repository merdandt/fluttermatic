import 'package:flutter/material.dart';

extension StringUiExtensions on String {
  Color get parseHexColor {
    final String hex = replaceAll('#', '');

    return Color(int.parse('0xFF$hex'));
  }
}
