part of '{{project_name.snakeCase()}}_theme.dart';

/// Returns the correct color based on the current theme.
ColorScheme get _lightColorScheme => const ColorScheme.light(
      // Primary
      primary: UIColors.primaryLight,
      onPrimary: UIColors.onPrimaryLight,

      //onPrimary: ,
      primaryContainer: UIColors.primaryContainerLight,
      onPrimaryContainer: UIColors.onPrimaryContainerLight,
      inversePrimary: UIColors.inversePrimaryLight,

      // Secondary
      secondary: UIColors.secondaryLight,
      onSecondary: UIColors.onSecondaryLight,
      secondaryContainer: UIColors.secondaryContainerLight,
      onSecondaryContainer: UIColors.onSecondaryContainerLight,
      // Surface
      surface: UIColors.surfaceLight,
      surfaceVariant: UIColors.surfaceVariantLight,
      onSurface: UIColors.onSurfaceLight,
      inverseSurface: UIColors.inverseSurfaceLight,
      surfaceTint: UIColors.surfaceStatus,
      onInverseSurface: UIColors.inverseOnSurfaceLight,
      onSurfaceVariant: UIColors.onSurfaceVariantLight,

      // Tertiary
      tertiary: UIColors.tertiaryLight,
      onTertiary: UIColors.onTertiaryLight,
      tertiaryContainer: UIColors.tertiaryContainerLight,
      onTertiaryContainer: UIColors.onTertiaryContainerLight,
      // Error
      error: UIColors.errorLight,
      onError: UIColors.onErrorLight,
      errorContainer: UIColors.errorContainerLight,
      onErrorContainer: UIColors.onErrorContainerLight,
      // Border
      outline: UIColors.outlineLight,
      outlineVariant: UIColors.outlineVariantLight,
      // Background
      background: UIColors.backgroundLight,
      onBackground: UIColors.surfaceDark,

      //other
      scrim: UIColors.scrimLight,
      shadow: UIColors.shadowLight,
    );

/// Returns the correct color based on the current theme.
ColorScheme get _darkColorScheme => _lightColorScheme.copyWith(
      background: UIColors.backgroundDark,
      onBackground: UIColors.onBackgroundDark,
      surface: UIColors.surfaceDark,
      surfaceVariant: UIColors.surfaceVariantDark,
      onSurface: UIColors.onSurfaceDark,
      primary: UIColors.primaryDark,
      onPrimary: UIColors.onPrimaryDark,
      primaryContainer: UIColors.primaryContainerDark,
      onPrimaryContainer: UIColors.onPrimaryContainerDark,
      secondary: UIColors.secondaryDark,
      onSecondary: UIColors.onSecondaryDark,
      secondaryContainer: UIColors.secondaryContainerDark,
      onSecondaryContainer: UIColors.onSecondaryContainerDark,
      outlineVariant: UIColors.outlineVariantDark,
      onSurfaceVariant: UIColors.onSurfaceVariantDark,
      error: UIColors.errorDark,
      onError: UIColors.onErrorDark,
      inversePrimary: UIColors.inversePrimaryDark,
      errorContainer: UIColors.errorContainerDark,
      inverseSurface: UIColors.inverseOnSurfaceDark,
      onErrorContainer: UIColors.onErrorContainerDark,
      onInverseSurface: UIColors.inverseOnSurfaceDark,
      onTertiary: UIColors.onTertiaryDark,
      onTertiaryContainer: UIColors.onTertiaryContainerDark,
      outline: UIColors.outlineDark,
      scrim: UIColors.scrimDark,
      shadow: UIColors.shadowDark,
      surfaceTint: UIColors.surfaceStatus,
      tertiary: UIColors.tertiaryDark,
      tertiaryContainer: UIColors.tertiaryContainerDark,
    );

/// Returns the correct background color based on the current theme.
Color get _backgroundColorLight => Colors.white;

Color get _backgroundColorDark => const Color(0xff020617);
