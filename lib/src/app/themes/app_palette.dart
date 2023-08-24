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
  static Color bg1 = const Color(0xFF4C4F6B);
  static Color bg2 = const Color(0xFF313248);
  static Color bg3 = const Color(0xFF292A38);
  static Color bg4 = const Color(0xFF191A23);
  static Color bg5 = const Color(0xFF0B0C1B);

  //Text Colors
  static Color text1 = const Color(0xFFDBDCEF);
  static Color text2 = const Color(0xFFFAFAFA);
  static Color text3 = const Color(0xFF828282);

  //Input Colors
  static Color inputBg = const Color.fromRGBO(255, 255, 255, .07);
  static Color inputBorder = const Color.fromRGBO(255, 255, 255, .13);

  // Neutral Colors
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);

  //Semantic colors
  static Color info = const Color(0xFF4EA7FC);
  static Color success = const Color(0xFF27AE60);
  static Color warning = const Color(0xFFF2C94C);
  static Color danger = const Color(0xFFEB5757);


  //------------- template ui colors --------------// 
  static Color primary = const Color(0xFF7B68EE);
  static Color text_1 = const Color(0xFFFFFFFF);
  static Color text_2 = const Color(0xFF1E272E99); 

  static Color orange = const Color(0xFFFCAC4E) ; 
  static Color green = const Color(0xFF36C545) ; 
  static Color red = const Color(0xFFEA5829) ; 



}
