import 'package:flutter/cupertino.dart';

extension MediaQuerySize on BuildContext {
  double get halfHeightSize => MediaQuery.sizeOf(this).height / 2;
  double get halfWidthSize => MediaQuery.sizeOf(this).width / 2;

  double get heightOverOnePointEight => MediaQuery.sizeOf(this).height / 1.8;

  double get heightOverOnePointSeven => MediaQuery.sizeOf(this).height / 1.7;
}
