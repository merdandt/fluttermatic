part of '{{project_name.snakeCase()}}_theme.dart';

/// Returns the correct [ButtonThemeData] based on the current theme.
ButtonThemeData get _buttonTheme => ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UISpacing.sm),
      ),
      padding: const EdgeInsets.symmetric(vertical: UISpacing.lg),
      buttonColor: UIColors.primaryLight,
      disabledColor: UIColors.onPrimaryLight,
      height: 48,
      minWidth: 48,
    );

/// Returns the correct [TextButtonThemeData] based on the current theme.
TextButtonThemeData get _lightTextButtonTheme => TextButtonThemeData(
      style: TextButton.styleFrom(
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(Radius.circular(30)),
        // ),
        elevation: 0,
        surfaceTintColor: Colors.transparent,

        shadowColor: Colors.transparent,
        textStyle: UITextStyle.titleLarge,
        foregroundColor: UIColors.onBackgroundLight,
        padding: EdgeInsets.zero,
        // fixedSize: const Size.fromHeight(16),
        backgroundColor: Colors.transparent,
        side: BorderSide.none,
      ),
    );

/// Returns the correct [TextButtonThemeData] based on the current theme.
TextButtonThemeData get _darkTextButtonTheme => TextButtonThemeData(
      style: TextButton.styleFrom(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        textStyle: UITextStyle.titleLarge,
        foregroundColor: UIColors.onBackgroundDark,
      ),
    );

/// Returns the correct [ElevatedButtonThemeData] based on the current theme.
ElevatedButtonThemeData get _lightElevatedButtonTheme =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(
          double.infinity,
          56,
        ),
        foregroundColor: UIColors.textWite,
        alignment: Alignment.center,
        backgroundColor: UIColors.primaryLight,
        disabledForegroundColor:
            UIColors.onSurfaceVariantLight.withOpacity(0.38),
        disabledBackgroundColor: UIColors.outlineVariantLight.withOpacity(0.38),
        padding: const EdgeInsets.symmetric(
          horizontal: UISpacing.xxs,
          vertical: UISpacing.xxxs,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        elevation: 0,
        textStyle: UITextStyle.titleLarge,
      ),
    );

/// Returns the correct [ElevatedButtonThemeData] based on the current theme.
ElevatedButtonThemeData get _darkElevatedButtonTheme => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: UIColors.onPrimaryDark,
        alignment: Alignment.center,
        backgroundColor: UIColors.primaryDark,
        disabledForegroundColor: UIColors.onSurfaceVariantDark,
        disabledBackgroundColor: UIColors.outlineVariantDark.withOpacity(0.38),
        padding: const EdgeInsets.symmetric(
          horizontal: UISpacing.xxxs,
          vertical: UISpacing.xxs,
        ),
        fixedSize: const Size(double.infinity, 56),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        textStyle: UITextStyle.titleLarge,
      ),
    );

/// Returns the correct [OutlinedButtonThemeData] based on the current theme.
OutlinedButtonThemeData get _lightOutlinedButtonTheme =>
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: UIColors.primaryLight,
        alignment: Alignment.center,
        backgroundColor: Colors.transparent,
        disabledBackgroundColor: UIColors.outlineVariantLight,
        disabledForegroundColor: UIColors.onSurfaceVariantLight,
        padding: const EdgeInsets.symmetric(
          horizontal: UISpacing.xxxs,
          vertical: UISpacing.xxs,
        ),
        elevation: 0,
        textStyle: UITextStyle.titleLarge,
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 1, color: UIColors.primaryLight),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );

/// Returns the correct [OutlinedButtonThemeData] based on the current theme.
OutlinedButtonThemeData get _darkOutlinedButtonTheme => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: UIColors.primaryDark,
        alignment: Alignment.center,
        backgroundColor: Colors.transparent,
        disabledForegroundColor: UIColors.onSurfaceVariantDark,
        disabledBackgroundColor: UIColors.outlineVariantDark,
        padding: const EdgeInsets.symmetric(
          horizontal: UISpacing.xxxs,
          vertical: UISpacing.xxs,
        ),
        elevation: 0,
        fixedSize: const Size(double.infinity, 56),
        textStyle: UITextStyle.titleLarge,
        shape: const RoundedRectangleBorder(
          side: BorderSide(width: 1, color: UIColors.primaryDark),
          borderRadius: UIRadiuses.maximum,
        ),
      ),
    );
