import 'package:flutter/widgets.dart';

abstract class UIRadiuses {
  /// BorderRadius with `Radius.circular(16)` value.
  static const borderMedium = BorderRadius.all(radiusM);

  /// BorderRadius with `Radius.circular(32)` value.
  static const borderBig = BorderRadius.all(Radius.circular(32));

  /// BorderRadius with `Radius.circular(12)` value.
  static const borderSmall = BorderRadius.all(radiusSm);

  /// BorderRadius with `Radius.circular(8)` value.
  static const borderExtraSmall = BorderRadius.all(radiusS);

  /// Cicular Radius with `Radius.circular(2)` value.
  static const Radius radiusXxs = Radius.circular(2);

  /// Cicular Radius with `Radius.circular(4)` value.
  static const Radius radiusXs = Radius.circular(4);

  /// Cicular Radius with `Radius.circular(8)` value.
  static const Radius radiusS = Radius.circular(8);

  /// Cicular Radius with `Radius.circular(12)` value.
  static const Radius radiusSm = Radius.circular(12);

  /// Cicular Radius with `Radius.circular(16)` value.
  static const Radius radiusM = Radius.circular(16);

  static const maximum = BorderRadius.all(Radius.circular(9999));
}
