part of '{{project_name.snakeCase()}}_theme.dart';

/// Returns the correct [AppBarTheme] based on the current theme.
AppBarTheme get _lightAppBarTheme => AppBarTheme(
      iconTheme: _lightIconTheme,
      elevation: 0,
      toolbarHeight: 64,
      centerTitle: true,
      foregroundColor: UIColors.primaryLight,
      backgroundColor: Colors.transparent,
      titleTextStyle: _lightTextTheme.displayMedium,
      toolbarTextStyle: _lightTextTheme.headlineMedium,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: UIColors.backgroundLight,
      ),
    );

/// Returns the correct [AppBarTheme] based on the current theme.
AppBarTheme get _darkAppBarTheme => _lightAppBarTheme.copyWith(
      iconTheme: _darkIconTheme,
      toolbarTextStyle: _darkTextTheme.titleLarge,
      titleTextStyle: _darkTextTheme.titleMedium,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: UIColors.backgroundDark,
      ),
    );

NavigationBarThemeData get _navigationBarTheme => const NavigationBarThemeData(
      backgroundColor: UIColors.surfaceBrightDark,
      indicatorColor: UIColors.primaryLight,
    );

/// Returns the correct [BottomSheetThemeData] based on the current theme.
BottomSheetThemeData get _lightBottomSheetTheme => const BottomSheetThemeData(
      backgroundColor: UIColors.surfacePrimary,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(UISpacing.lg),
          topRight: Radius.circular(UISpacing.lg),
        ),
      ),
    );

/// Returns the correct [BottomSheetThemeData] based on the current theme.
BottomSheetThemeData get _darkBottomSheetTheme =>
    _lightBottomSheetTheme.copyWith(
      backgroundColor: UIColors.primaryLight,
    );

/// Returns the correct [TabBarTheme] based on the current theme.
TabBarTheme get _tabBarTheme => TabBarTheme(
      labelStyle: UITextStyle.bodyMedium,
      labelColor: UIColors.onPrimaryLight,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: UISpacing.lg,
        vertical: UISpacing.md + UISpacing.xxs,
      ),

      dividerColor: UIColors.transparent,
      // overlayColor: MaterialStateProperty.all(
      //   UIColors.surfaceSelected,
      // ),
      indicatorColor: UIColors.primaryLight,
      unselectedLabelStyle: UITextStyle.bodyMedium,
      unselectedLabelColor: UIColors.outlineDark,

      indicatorSize: TabBarIndicatorSize.tab,
    );

TabBarTheme get _darkTabBarTheme => _tabBarTheme.copyWith(
      unselectedLabelColor: UIColors.outlineLight,
      labelColor: UIColors.onPrimaryDark,
      indicatorColor: UIColors.primaryDark,
    );

/// Returns the correct [BottomNavigationBarThemeData] based on the current
/// theme.
BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
    BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: UIColors.backgroundLight,
      selectedItemColor: UIColors.primaryLight,
      unselectedItemColor: UIColors.outlineLight,
      selectedIconTheme: const IconThemeData(
        color: UIColors.primaryLight,
      ),
      unselectedIconTheme: const IconThemeData(
        color: UIColors.outlineLight,
      ),
      selectedLabelStyle: UITextStyle.labelSmall,
      unselectedLabelStyle:
          UITextStyle.labelSmall.copyWith(color: UIColors.outlineLight),
    );

BottomNavigationBarThemeData get _darkBottomNavigationBarTheme =>
    _bottomNavigationBarTheme.copyWith(
      selectedIconTheme: const IconThemeData(
        color: UIColors.primaryDark,
      ),
      backgroundColor: UIColors.backgroundDark,
      selectedItemColor: UIColors.primaryDark,
      unselectedIconTheme: const IconThemeData(
        color: UIColors.outlineDark,
      ),
    );
