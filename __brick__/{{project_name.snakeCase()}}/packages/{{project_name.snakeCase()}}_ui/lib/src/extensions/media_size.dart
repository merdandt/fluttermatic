import 'package:flutter/material.dart';

extension MediaSize on BuildContext {
  double widthPercent(final double percent) =>
      MediaQuery.sizeOf(this).width * percent;

  double heightPercent(final double percent) =>
      MediaQuery.sizeOf(this).height * percent;
}
