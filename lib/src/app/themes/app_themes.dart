import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData dark = ThemeData(
    fontFamily: AppTypography.familyRoboto,
    brightness: Brightness.dark,
    primarySwatch: AppPalette.primarySwatch,
    scaffoldBackgroundColor: AppPalette.bg1,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: AppTypography.t14,
        fontWeight: AppTypography.w500,
        color: AppPalette.white.withOpacity(.7),
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: AppTypography.t14,
        fontWeight: AppTypography.w400,
        color: AppPalette.tabsBorderColor,
      ),
    ),
  );
}
