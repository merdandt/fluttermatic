import 'package:flutter/material.dart';

abstract class {{short_name.upperCase()}}Colors {
 /// Transperent color.
  static const Color transparent = Colors.transparent;

  /// LIGHT COLORS

  /// Primary color.
  static const Color primaryLight = Color(0xFF2944F6);

  /// Secondary color.
  static const Color secondaryLight = Color(0xFF38404A);

  /// Tertiary color.
  static const Color tertiaryLight = Color(0xFF006B57);

  /// Error color.
  static const Color errorLight = Color(0xFFBF002B);

  /// On Primary color.
  static const Color onPrimaryLight = Color(0xFFFFFFFF);

  /// On Secondary color, the same as On Primary.
  static const Color onSecondaryLight = onPrimaryLight;

  /// On Tertiary color, the same as On Primary.
  static const Color onTertiaryLight = onPrimaryLight;

  /// On Erorr color, the same as On Primary.
  static const Color onErrorLight = onPrimaryLight;

  /// Primary Container color.
  static const Color primaryContainerLight = Color(0xFFDDEBFF);

  /// Secondary Container color.
  static const Color secondaryContainerLight = Color(0xFF5B636E);

  /// Tertiary Container color.
  static const Color tertiaryContainerLight = Color(0xFF40D9B5);

  /// Error Container color.
  static const Color errorContainerLight = Color(0xFFFFB3B2);

  /// On Primary Container color.
  static const Color onPrimaryContainerLight = Color(0xFF25348A);

  /// On Secondary Container color.
  static const Color onSecondaryContainerLight = onSecondaryLight;

  /// On Tertiary Container color.
  static const Color onTertiaryContainerLight = Color(0xFF003B2F);

  /// On Error Container color.
  static const Color onErrorContainerLight = Color(0xff92001E);

  /// Primary Fixed color.
  static const Color primaryFixedLight = primaryContainerLight;

  /// Primary Fixed Dim color.
  static const Color primaryFixedDimLight = Color(0xFFC1DAFF);

  /// Secondary Fixed color.
  static const Color secondaryFixedLight = Color(0xFFDBE3F0);

  /// Secondary Fixed Dim color.
  static const Color secondaryFixedDimLight = Color(0xFFBFC7D4);

  /// Tertiary Fixed color.
  static const Color tertiaryFixedLight = Color(0xFF69FAD5);

  /// Tertiary Fixed Dim color.
  static const Color tertiaryFixedDimLight = Color(0xFF46DDB9);

  /// On Primary Fixed color.
  static const Color onPrimaryFixedLight = Color(0xFF25348A);

  /// On Primary Fixed Variant color.
  static const Color onPrimaryFixedVariantLight = Color(0xFF283DDA);

  /// On Secondary Fixed color.
  static const Color onSecondaryFixedLight = Color(0xFF141C26);

  /// On Secondary Fixed Variant color.
  static const Color onSecondaryFixedVariantLight = Color(0xFF3F4752);

  /// On Tertiary Fixed color.
  static const Color onTertiaryFixedLight = Color(0xFF002019);

  /// On Tertiary Fixed Variant color.
  static const Color onTertiaryFixedVariantLight = Color(0xFF005141);

  /// Surface Dim color.
  static const Color surfaceDimLight = Color(0xFFDAD9E6);

  /// Surface color.
  static const Color surfaceLight = Color(0xFFF2F6F7);

  /// Surface Variant color
  static const Color surfaceVariantLight = Color(0xFFEBEFF0);

  /// Surface Bright color
  static const Color surfaceBrightLight = Color(0xFFFBF8FF);

  /// Surface Container Lowest color.
  static const Color surfaceContainerLowestLight = onPrimaryLight;

  /// Surface Container Low color.
  static const Color surfaceContainerLowLight = Color(0xFFF2F6FF);

  /// Surface Container color.
  static const Color surfaceContainerLight = Color(0xFFEEF6FB);

  /// Surface Container High color.
  static const Color surfaceContainerHighLight = Color(0xFFE8ECF6);

  /// Surface Container Highest color.
  static const Color surfaceContainerHighestLight = Color(0xFFE1E6EF);

  /// On Surface color.
  static const Color onSurfaceLight = Color(0xFF1A1B25);

  /// On Surface Variant color.
  static const Color onSurfaceVariantLight = Color(0xFF444656);

  /// Outline color.
  static const Color outlineLight = Color(0xFF757988);

  /// Outline Variant color.
  static const Color outlineVariantLight = Color(0xFFC5CCD9);

  /// Inverse Surface color.
  static const Color inverseSurfaceLight = Color(0xFF2F303A);

  /// Inverse On Surface color.
  static const Color inverseOnSurfaceLight = Color(0xFFF1EFFD);

  /// Inverse Primary color.
  static const Color inversePrimaryLight = Color(0xFFC1DAFF);

  /// Scrim color.
  static const Color scrimLight = Color(0xFF000000);

  /// Shadow color.
  static const Color shadowLight = scrimLight;

  /// White color.
  static const Color white = Color(0xFFFFFFFF);

  /// Dark color.
  static const Color dark = Color(0xFF1A1B25);

  /// Black & White color.
  static const Color bWLight = Color(0xffFFFFFF);

  /// Modal Blur color.
  static const Color modalBlur = Color(0xff363636);

  /// On background color.
  static const Color onBackgroundLight = dark;

  /// Background color.
  static const Color backgroundLight = white;

  /// Warning color.
  static const Color warning = Color(0xffF79009);

  /// Success color.
  static const Color success = Color(0xff17B26A);

  /// DARK COLORS

  /// Primary color.
  static const Color primaryDark = Color(0xFFC1DAFF);

  /// Secondary color.
  static const Color secondaryDark = Color(0xFFBFC7D4);

  /// Tertiary color.
  static const Color tertiaryDark = Color(0xFF61F3CE);

  /// Error color.
  static const Color errorDark = Color(0xFFFF525D);

  /// On Primary color.
  static const Color onPrimaryDark = Color(0xFF2335B0);

  /// On Secondary color, the same as On Primary.
  static const Color onSecondaryDark = Color(0xFF29313B);

  /// On Tertiary color, the same as On Primary.
  static const Color onTertiaryDark = Color(0xFF00382C);

  /// On Erorr color, the same as On Primary.
  static const Color onErrorDark = Color(0xFF680013);

  /// Primary Container color.
  static const Color primaryContainerDark = Color(0xFF283DDA);

  /// Secondary Container color.
  static const Color secondaryContainerDark = Color(0xFF424A55);

  /// Tertiary Container color.
  static const Color tertiaryContainerDark = Color(0xFF24C8A5);

  /// Error Container color.
  static const Color errorContainerDark = Color(0xFF92001E);

  /// On Primary Container color.
  static const Color onPrimaryContainerDark = Color(0xFFDDEBFF);

  /// On Secondary Container color.
  static const Color onSecondaryContainerDark = Color(0xFFDEE5F3);

  /// On Tertiary Container color.
  static const Color onTertiaryContainerDark = Color(0xFF002D23);

  // /// On Error Container color.
  static const Color onErrorContainerDark = Color(0xffFFDAD9);

  /// Primary Fixed color.
  static const Color primaryFixedDark = primaryFixedLight;

  /// Primary Fixed Dim color.
  static const Color primaryFixedDimDark = primaryFixedDimLight;

  /// Secondary Fixed color.
  static const Color secondaryFixedDark = secondaryFixedLight;

  /// Secondary Fixed Dim color.
  static const Color secondaryFixedDimDark = secondaryFixedDimLight;

  /// Tertiary Fixed color.
  static const Color tertiaryFixedDark = tertiaryFixedLight;

  /// Tertiary Fixed Dim color.
  static const Color tertiaryFixedDimDark = tertiaryFixedDimLight;

  /// On Primary Fixed color.
  static const Color onPrimaryFixedDark = onPrimaryFixedLight;

  /// On Primary Fixed Variant colot.
  static const Color onPrimaryFixedVariantDark = onPrimaryFixedVariantLight;

  /// On Secondary Fixed color.
  static const Color onSecondaryFixedDark = onSecondaryFixedLight;

  /// On Secondary Fixed Variant color.
  static const Color onSecondaryFixedVariantDark = onSecondaryFixedVariantLight;

  /// On Tertiary Fixed color.
  static const Color onTertiaryFixedDark = onTertiaryFixedLight;

  /// On Tertiary Fixed Variant color.
  static const Color onTertiaryFixedVariantDark = onTertiaryFixedVariantLight;

  /// Surface Dim color.
  static const Color surfaceDimDark = Color(0xFF12131C);

  /// Surface color.
  static const Color surfaceDark = Color(0xFF050F2E);

  /// Surface Variant color
  static const Color surfaceVariantDark = Color(0xFF071540);

  /// Surface Bright color
  static const Color surfaceBrightDark = Color(0xFF383843);

  /// Surface Container Lowest color.
  static const Color surfaceContainerLowestDark = Color(0xFF0C0E17);

  /// Surface Container Low color.
  static const Color surfaceContainerLowDark = Color(0xFF1A1B25);

  /// Surface Container color.
  static const Color surfaceContainerDark = Color(0xFF0C0E17);

  /// Surface Container High color.
  static const Color surfaceContainerHighDark = Color(0xFF282934);

  /// Surface Container Highest color.
  static const Color surfaceContainerHighestDark = Color(0xFF33343F);

  /// On Surface Variant color.
  static const Color onSurfaceVariantDark = Color(0xffC5C5D9);

  /// On Surface color.
  static const Color onSurfaceDark = Color(0xFFE2E1EF);

  /// Outline color.
  static const Color outlineDark = Color(0xFF757988);

  /// Outline Variant color.
  static const Color outlineVariantDark = Color(0xFF444656);

  /// Inverse Surface color.
  static const Color inverseSurfaceDark = Color(0xFFE2E1EF);

  /// Inverse On Surface color.
  static const Color inverseOnSurfaceDark = Color(0xFF2F303A);

  /// Inverse Primary color.
  static const Color inversePrimaryDark = Color(0xFF2944F6);

  /// Scrim color.
  static const Color scrimDark = scrimLight;

  /// Shadow color.
  static const Color shadowDark = scrimDark;

  /// Black & White color.
  static const Color bWDark = Color(0xff020617);

  /// On background color.
  static const Color onBackgroundDark = Color(0xffE2E1EF);

  /// Background color.
  static const Color backgroundDark = bWDark;

  static const Color pyygGreen = Color(0xff58C083);

  ///

  /// The primary text color of application.
  static const Color textPrimaryLight = onBackgroundDark;

  /// The secondary text color of application.
  static const Color textSecondaryLight = primaryLight;

  /// The wite text color of application.
  static const Color textWite = white;

  /// The disabled text color of application.
  static const Color textDisabled = onSurfaceVariantLight;

  /// The warning text color of application.
  static const Color textWarning = warning;

  /// The primary text color of application.
  static const Color textPrimaryDark = onBackgroundLight;

  /// The secondary text color of application.
  // static const Color textSecondaryLight = surfaceContainerLight;

  /// The wite text color of application.
  static const Color textDark = dark;

  /// The disabled text color of application.
  static const Color textDisabledDark = onSurfaceVariantDark;

  // / The primary borde color of application.
  static const Color borderPrimary = tertiaryLight;

  /// The secondary border color of application.
  static const Color borderSecondary = surfaceLight;

  /// The secondary border color of application.
  static const Color borderSecondary2 = surfaceBrightLight;

  /// The selected border color of application.
  static const Color borderSelected = onErrorContainerLight;

  /// The disabled border color of application.
  static const Color borderDisabled = onPrimaryFixedVariantLight;

  /// The dark border color of application.
  static const Color borderDark = surfaceContainerLight;

  /// The light border color of application.
  static const Color borderLight = onPrimaryFixedVariantLight;

  /// The primary Surface color of application.
  // static const Color surfaceBlack = tertiaryLight;

  /// The primary Surface color of application.
  static const Color surfacePrimary = onPrimaryContainerLight;

  /// The secondary Surface color of application.
  static const Color surfaceSecondary = onErrorContainerLight;

  /// The input Surface color of application.
  static const Color surfaceInput = secondaryLight;

  /// The selected Surface color of application.
  static const Color surfaceSelected = secondaryLight;

  /// The dark Surface color of application.
  // static const Color surfaceDark = primaryFixedLight;

  /// The disabled Surface color of application.
  static const Color surfaceDisabledIcons = surfaceDimLight;

  /// The disabled Fields color of application.
  static const Color surfaceDisabledFields = onPrimaryFixedLight;

  /// The status Surface color of application.
  static const Color surfaceStatus = onTertiaryContainerLight;

  // / The status Surface color of application.
  // static const Color surfaceWarning = warning10;

  static const gradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color.fromARGB(255, 14, 16, 15),
      Color.fromARGB(50, 14, 16, 15),
      Color.fromARGB(0, 14, 16, 15),
    ],
  );

  static const multiGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    // stops: [0.0388, 0.525, 0.9631],
    colors: [
      Color(0xFFDDECE5), // #FA64A3 на 3.88%
      Color(0xFFC0E7E8), // #A97BF2 на 52.5%
      Color(0xFFC1C9E3), // #5AB7FC на 96.31%
      Color(0xFFC4D6DE), // #5AB7FC на 96.31%
      Color(0xFFB8C8CC), // #5AB7FC на 96.31%
    ],
  );

}
