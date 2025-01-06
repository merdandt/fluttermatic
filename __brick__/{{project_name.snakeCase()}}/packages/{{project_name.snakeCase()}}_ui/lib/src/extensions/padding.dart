import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';
import 'package:flutter/material.dart';

extension PaddingExtensions on Widget {
  Padding paddingAll(final double value, {final Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.all(value),
        child: this,
      );

  Padding paddingLTRB(
    final double left,
    final double top,
    final double right,
    final double bottom, {
    final Key? key,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding paddingSymmetric({
    final Key? key,
    final double v = 0.0,
    final double h = 0.0,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.symmetric(
          vertical: v,
          horizontal: h,
        ),
        child: this,
      );

  Padding paddingOnly({
    final Key? key,
    final double left = 0.0,
    final double right = 0.0,
    final double top = 0.0,
    final double bottom = 0.0,
  }) =>
      Padding(
        key: key,
        padding:
            EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: this,
      );

  Padding standartPadding({
    final bool hExistAtWidget = false,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.only(
          left: hExistAtWidget ? 0 : UISpacing.lg,
          right: hExistAtWidget ? 0 : UISpacing.lg,
          bottom: UISpacing.sm,
          top: UISpacing.md,
        ),
        child: this,
      );

  Padding bottom24StandartPadding({
    final bool hExistAtWidget = false,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.only(
          left: hExistAtWidget ? 0 : UISpacing.lg,
          right: hExistAtWidget ? 0 : UISpacing.lg,
          bottom: UISpacing.xlg,
          top: UISpacing.md,
        ),
        child: this,
      );
}
