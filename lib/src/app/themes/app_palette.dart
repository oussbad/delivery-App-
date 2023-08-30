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

  // Neutral Colors
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);

  //Semantic colors
  static Color info = const Color(0xFF7B68EE);
  static Color success = const Color(0xFF36C545);
  static Color warning = const Color(0xFFFCAC4E);
  static Color danger = const Color(0xFFEA5829);

  //BG Colors
  static Color bg1 = const Color(0xFF2B343B);
  static Color bg2 = const Color(0xFF4D5061).withOpacity(.24);
  static Color bg3 = white.withOpacity(.02);
  static Color bg4 = warning.withOpacity(.6);
  static Color bg5 = const Color(0xFF716D88).withOpacity(.20);

  // Btn Colors
  static Color button = const Color(0xFFC2C1FF);
  static Color dropdown = const Color(0xFFD0BCFF).withOpacity(.8);

  // Text Colors
  static Color text1 = const Color(0xFF1E272E).withOpacity(.8);
  static Color text2 = const Color(0xFF381E72);
  static Color text3 = white.withOpacity(.6);
  static Color text4 = const Color(0xFF1E272E).withOpacity(.6);
}
