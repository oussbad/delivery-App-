import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData dark = ThemeData(
    fontFamily: AppTypography.familyRoboto,
    primarySwatch: AppPalette.primarySwatch,
    scaffoldBackgroundColor: AppPalette.bg1,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          // color: AppPalette.white,
          ),
      bodyLarge: TextStyle(
          // color: AppPalette.white,
          ),
      bodySmall: TextStyle(
          // color: AppPalette.white,
          ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      //fillColor: AppPalette.inputBg,
      border: OutlineInputBorder(
          //  borderSide: BorderSide(color: AppPalette.inputBorder),
          ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
      side: BorderSide(
          // color: AppPalette.inputBorder,
          ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
    ),
    appBarTheme: AppBarTheme(
        // backgroundColor: AppPalette.inputBorder,
        ),
    drawerTheme: DrawerThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 2,
      selectedItemColor: AppPalette.white,
      unselectedItemColor: AppPalette.primarySwatch,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // backgroundColor: AppPalette.inputBorder,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
