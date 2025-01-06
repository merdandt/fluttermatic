/// Returns the correct [TextTheme] based on the current theme.
part of '{{project_name.snakeCase()}}_theme.dart';

TextTheme get _lightTextTheme => TextTheme(
      // Headlines
      headlineLarge: UITextStyle.headLineLarge,
      headlineMedium: UITextStyle.headLineMedium,
      headlineSmall: UITextStyle.headLineSmall,
      // Titles
      titleLarge: UITextStyle.titleLarge,
      titleMedium: UITextStyle.titleMedium,
      titleSmall: UITextStyle.titleSmall,
      // Body
      bodyLarge: UITextStyle.bodyLarge,
      bodyMedium: UITextStyle.bodyMedium,
      bodySmall: UITextStyle.bodySmall,
      // Display
      displayLarge: UITextStyle.displayLarge,
      displayMedium: UITextStyle.displayMedium,
      displaySmall: UITextStyle.displaySmall,
      // Label
      labelLarge: UITextStyle.labelLarge,
      labelMedium: UITextStyle.labelMedium,
      labelSmall: UITextStyle.labelSmall,
    ).apply(
      bodyColor: UIColors.onBackgroundLight,
      displayColor: UIColors.onBackgroundLight,
      decorationColor: UIColors.onBackgroundLight,
    );

/// Returns the correct [TextTheme] based on the current theme.
TextTheme get _darkTextTheme => _lightTextTheme.apply(
      bodyColor: UIColors.onBackgroundDark,
      displayColor: UIColors.onBackgroundDark,
      decorationColor: UIColors.onBackgroundDark,
    );

/// Returns the correct [InputDecorationTheme] based on the current theme.
InputDecorationTheme get _lightInputDecorationTheme => InputDecorationTheme(
      errorStyle: UITextStyle.bodyMedium.copyWith(
        color: UIColors.errorLight,
      ),
      suffixIconColor: UIColors.outlineLight,
      filled: false,
      fillColor: Colors.transparent,
      alignLabelWithHint: true,

      // labelStyle:
      //     UITextStyle.bodyLarge.copyWith(color: UIColors.onBackgroundLight),
    );

/// Returns the correct [InputDecorationTheme] based on the current theme.
InputDecorationTheme get _darkInputDecorationTheme =>
    _lightInputDecorationTheme.copyWith(
      errorStyle: UITextStyle.bodyLarge.copyWith(
        color: UIColors.errorDark,
      ),
    );
