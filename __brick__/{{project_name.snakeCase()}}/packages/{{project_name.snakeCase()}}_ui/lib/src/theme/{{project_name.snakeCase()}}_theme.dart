import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../{{project_name.snakeCase()}}_ui.dart';

part 'theme_colors.dart';
part 'theme_text_and_inputs.dart';
part 'theme_bars_and_modals.dart';
part 'theme_icons_and_elements.dart';
part 'theme_buttons.dart';

class UITheme {
  /// Light Theme example based on Material 2 Design.
  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        // Color sheme
        colorScheme: _lightColorScheme,
        // Colors
        primaryColor: UIColors.primaryLight,
        cardColor: UIColors.surfacePrimary,
        dividerColor: UIColors.outlineVariantLight,
        secondaryHeaderColor: UIColors.secondaryLight,
        splashColor: Colors.transparent,
        canvasColor: _backgroundColorLight,
        scaffoldBackgroundColor: _backgroundColorLight,
        hoverColor: Colors.transparent,
        unselectedWidgetColor: UIColors.surfaceDisabledFields,
        hintColor: UIColors.outlineLight,
        shadowColor: UIColors.surfaceDark,
        disabledColor: UIColors.textDisabled,
        focusColor: UIColors.surfaceSelected,
        indicatorColor: UIColors.surfaceSelected,

        // AppBar
        actionIconTheme: _actionIconThemeData,

        // Elements
        switchTheme: _lightSwitchTheme,
        chipTheme: _chipTheme,
        radioTheme: _lightRadioTheme,
        checkboxTheme: _lightCheckBoxThemeData,
        badgeTheme: _lightBadgeTheme,

        // Theme
        iconTheme: _lightIconTheme,
        appBarTheme: _lightAppBarTheme,
        dividerTheme: _dividerTheme,
        bottomSheetTheme: _lightBottomSheetTheme,
        navigationBarTheme: _navigationBarTheme,
        bottomNavigationBarTheme: _bottomNavigationBarTheme,

        // Buttons
        buttonTheme: _buttonTheme,
        elevatedButtonTheme: _lightElevatedButtonTheme,
        outlinedButtonTheme: _lightOutlinedButtonTheme,
        textButtonTheme: _lightTextButtonTheme,
        tabBarTheme: _tabBarTheme,

        // Text and inputs
        progressIndicatorTheme: _progressIndicatorTheme,
        textTheme: _lightTextTheme,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: UIColors.primaryLight,
        ),

        // Other
        listTileTheme: _listTileTheme,
        inputDecorationTheme: _lightInputDecorationTheme,
      );

  /// Dark Theme example based on Material 2 Design.
  ThemeData get darkTheme => lightTheme.copyWith(
        canvasColor: _backgroundColorDark,
        chipTheme: _darkChipTheme,
        scaffoldBackgroundColor: _backgroundColorDark,
        colorScheme: _darkColorScheme,
        appBarTheme: _darkAppBarTheme,
        disabledColor: UIColors.secondaryLight.withOpacity(0.5),
        unselectedWidgetColor: UIColors.errorLight,
        iconTheme: _darkIconTheme,
        bottomSheetTheme: _darkBottomSheetTheme,
        listTileTheme: _listTileTheme.copyWith(textColor: UIColors.textWite),
        hintColor: UIColors.outlineDark,
        badgeTheme: _darkBadgeTheme,
        // Buttons
        outlinedButtonTheme: _darkOutlinedButtonTheme,
        elevatedButtonTheme: _darkElevatedButtonTheme,
        textButtonTheme: _darkTextButtonTheme,
        tabBarTheme: _darkTabBarTheme,
        bottomNavigationBarTheme: _darkBottomNavigationBarTheme,
        inputDecorationTheme: _darkInputDecorationTheme,
      );
}
