import 'package:flutter/material.dart';

extension SpasingExtensions on num {
  EdgeInsets edgeInsetsAll() => EdgeInsets.all(
        toDouble(),
      );

  EdgeInsets edgeInsetsLTRB({
    final bool? left,
    final bool? top,
    final bool? right,
    final bool? bottom,
  }) =>
      EdgeInsets.fromLTRB(
        left == null ? 0.0 : toDouble(),
        left == null ? 0.0 : toDouble(),
        left == null ? 0.0 : toDouble(),
        left == null ? 0.0 : toDouble(),
      );

  EdgeInsets edgeInsetsSymmetric({final bool? v, final bool? h}) =>
      EdgeInsets.symmetric(
        vertical: v == null ? 0.0 : toDouble(),
        horizontal: h == null ? 0.0 : toDouble(),
      );
}
