import 'package:flutter/material.dart';

class AppPalette {
  AppPalette._();

  //Color Palette
  static MaterialColor primarySwatch = const MaterialColor(
    0xFF575BC7,
    {
      50: Color.fromRGBO(87, 91, 199, .1),
      100: Color.fromRGBO(87, 91, 199, .2),
      200: Color.fromRGBO(87, 91, 199, .3),
      300: Color.fromRGBO(87, 91, 199, .4),
      400: Color.fromRGBO(87, 91, 199, .5),
      500: Color.fromRGBO(87, 91, 199, .6),
      600: Color.fromRGBO(87, 91, 199, .7),
      700: Color.fromRGBO(87, 91, 199, .8),
      800: Color.fromRGBO(87, 91, 199, .9),
      900: Color.fromRGBO(87, 91, 199, 1),
    },
  );

  //BG Colors

  //Text Colors
  static Color text1 = const Color(0xFFDBDCEF);
  static Color text2 = const Color(0xFF858699);

  // Neutral Colors
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);

  //Semantic colors
  static Color info = const Color(0xFF4EA7FC);
  static Color success = const Color(0xFF27AE60);
  static Color warning = const Color(0xFFF2C94C);
  static Color danger = const Color(0xFFEB5757);
}
