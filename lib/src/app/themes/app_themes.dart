import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData dark = ThemeData(
    // fontFamily: AppTypography.familyInter,
    primarySwatch: AppPalette.primarySwatch,
    scaffoldBackgroundColor: AppPalette.bg4,
    hintColor: AppPalette.inputBorder,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppPalette.white,
      ),
      bodyLarge: TextStyle(
        color: AppPalette.white,
      ),
      bodySmall: TextStyle(
        color: AppPalette.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPalette.inputBg,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppPalette.inputBorder),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
      side: BorderSide(
        color: AppPalette.inputBorder,
      ),
    ),

    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.inputBorder,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppPalette.bg4,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 2,
      selectedItemColor: AppPalette.white,
      unselectedItemColor: AppPalette.primarySwatch,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppPalette.inputBorder,
      type: BottomNavigationBarType.fixed,
    ),
  );

  // Light theme
  static ThemeData light = ThemeData(
    //fontFamily: AppTypography.familyInter,
    primarySwatch: AppPalette.primarySwatch,
    scaffoldBackgroundColor: Colors.white, // Set the background color for light theme
    hintColor: AppPalette.inputBorder,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black, // Set the text color for light theme
      ),
      bodyLarge: TextStyle(
        color: Colors.black, // Set the text color for light theme
      ),
      bodySmall: TextStyle(
        color: Colors.black, // Set the text color for light theme
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPalette.inputBg,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppPalette.inputBorder),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
      side: BorderSide(
        color: AppPalette.inputBorder,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all<Color>(
        AppPalette.primarySwatch,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.inputBorder,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppPalette.bg4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 2,
      selectedItemColor: Colors.black, // Set the selected item color for light theme
      unselectedItemColor: AppPalette.primarySwatch,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppPalette.inputBorder,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
