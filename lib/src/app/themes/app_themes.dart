import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData dark = ThemeData(
    // fontFamily: AppTypography.familyInter,
    primarySwatch: AppPalette.primarySwatch,
    scaffoldBackgroundColor: AppPalette.bg4,
    hintColor: AppPalette.inputBorder,
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
  );
}
