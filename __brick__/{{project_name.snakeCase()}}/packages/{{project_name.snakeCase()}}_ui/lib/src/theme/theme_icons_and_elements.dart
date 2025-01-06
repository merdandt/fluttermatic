part of '{{project_name.snakeCase()}}_theme.dart';

ActionIconThemeData get _actionIconThemeData => ActionIconThemeData(
      backButtonIconBuilder: (final context) => Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 3,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: UIRadiuses.maximum,
          color: context.theme.colorScheme.surface,
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
      closeButtonIconBuilder: (final context) => Container(
        padding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 3,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: UIRadiuses.maximum,
          color: context.theme.colorScheme.surface,
        ),
        child: const Icon(
          Icons.close,
          size: 20,
        ),
      ),
      // TODO: Add a drawer button icon
      drawerButtonIconBuilder: (final context) => Icon(
        Icons.menu,
        color: context.theme.colorScheme.onSurface,
      ),
    );

/// Returns the correct [IconThemeData] based on the current theme.
IconThemeData get _lightIconTheme => const IconThemeData(
      color: UIColors.onBackgroundLight,
    );

/// Returns the correct [IconThemeData] based on the current theme.
IconThemeData get _darkIconTheme => const IconThemeData(
      color: UIColors.onBackgroundDark,
    );

/// Returns the correct [DividerThemeData] based on the current theme.
DividerThemeData get _dividerTheme => const DividerThemeData(
      color: UIColors.outlineVariantLight,
      thickness: UISpacing.xxxxlg,
    );

/// Returns the correct [ListTileThemeData] based on the current theme.
ListTileThemeData get _listTileTheme => ListTileThemeData(
      tileColor: Colors.transparent,
      iconColor: UIColors.primaryLight,
      subtitleTextStyle: UITextStyle.labelLarge
          .copyWith(color: UIColors.secondaryLight.withOpacity(0.7)),
      titleTextStyle:
          UITextStyle.bodyLarge.copyWith(color: UIColors.onBackgroundLight),
    );

/// Returns the correct [ProgressIndicatorThemeData] based on the current
/// theme.
ProgressIndicatorThemeData get _progressIndicatorTheme =>
    const ProgressIndicatorThemeData(
      color: UIColors.primaryLight,
      circularTrackColor: UIColors.transparent,
    );

/// Returns the correct [SwitchThemeData] based on the current theme.
SwitchThemeData get _lightSwitchTheme => SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
        (final states) => UIColors.surfacePrimary,
      ),
      trackColor: MaterialStateProperty.resolveWith((final states) {
        if (states.contains(MaterialState.selected)) {
          // When the switch is ON
          return UIColors.secondaryContainerDark;
        }

        // When the switch is OFF
        return UIColors.surfaceContainerLowestLight;
      }),
    );

/// Returns the correct [ChipThemeData] based on the current theme.
ChipThemeData get _chipTheme => ChipThemeData(
      backgroundColor: UIColors.primaryLight,
      disabledColor: UIColors.onPrimaryLight,
      selectedColor: UIColors.secondaryContainerDark,
      secondarySelectedColor: UIColors.secondaryLight,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      labelStyle: UITextStyle.bodyMedium.copyWith(
        color: UIColors.textPrimaryLight,
      ),
      secondaryLabelStyle: UITextStyle.bodySmall,
      brightness: Brightness.light,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: UISpacing.sm,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

/// Returns the correct [ChipThemeData] based on the current theme.
ChipThemeData get _darkChipTheme => ChipThemeData(
      backgroundColor: UIColors.primaryLight,
      disabledColor: UIColors.onPrimaryLight,
      selectedColor: UIColors.secondaryContainerDark,
      secondarySelectedColor: UIColors.secondaryLight,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      labelStyle: UITextStyle.bodySmall.copyWith(color: UIColors.tertiaryLight),
      secondaryLabelStyle: UITextStyle.bodySmall,
      brightness: Brightness.light,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: UISpacing.sm,
        vertical: UISpacing.xs,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

RadioThemeData get _lightRadioTheme => RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (final states) {
          if (states.contains(MaterialState.selected)) {
            return UIColors
                .surfaceContainerHighLight; // The color when the button is selected
          }

          return UIColors
              .surfaceContainerHighLight; // The color when the button is unselected
        },
      ),
    );

CheckboxThemeData get _lightCheckBoxThemeData => CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (final states) {
          if (states.contains(MaterialState.selected)) {
            // The color when the checkbox is selected
            return UIColors.primaryLight;
          }

          // The color when the checkbox is unselected
          return UIColors
              .transparent; // The color when the checkbox is selected
        },
      ),
    );

BadgeThemeData get _lightBadgeTheme => BadgeThemeData(
      backgroundColor: UIColors.errorLight,
      textColor: UIColors.white,
      textStyle: UITextStyle.labelSmall,
    );

BadgeThemeData get _darkBadgeTheme => BadgeThemeData(
      backgroundColor: UIColors.errorLight,
      textColor: UIColors.white,
      textStyle: UITextStyle.bodySmall,
    );
