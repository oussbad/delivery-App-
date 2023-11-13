import 'package:flutter/material.dart';

class AppPalette {
  AppPalette._();

  // Primary Swatch
  static MaterialColor primarySwatch = const MaterialColor(
    0xFF575BC7,
    {
      50: Color(0xFFf2f3fc),
      100: Color(0xFFe2e5f7),
      200: Color(0xFFccd2f1),
      300: Color(0xFFa8b4e8),
      400: Color(0xFF7f8edb),
      500: Color(0xFF606cd1),
      600: Color(0xFF575bc7),
      700: Color(0xFF4342b3),
      800: Color(0xFF3f3b92),
      900: Color(0xFF363474),
      950: Color(0xFF242348),
    },
  );

  // Neutral Colors
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);

  // Semantic colors
  static Color info = const Color(0xFF7B68EE);
  static Color success = const Color(0xFF36C545);
  static Color warning = const Color(0xFFFCAC4E);
  static Color danger = const Color(0xFFEA5829);

  // Button colors
  static Color btnColor1 = const Color(0xFFC2C1FF);
  static Color btnColor2 = const Color(0xFF381E72);
  static Color btnColor3 = const Color(0xFFD0BCFF).withOpacity(.08);
  static Color btnColor4 = const Color(0xFF938F99);
  static Color btnColor5 = const Color(0xFF716D88).withOpacity(.2);
  static Color disabledBtn1 = const Color(0xFFE6E1E5).withOpacity(.12);
  static Color disabledBtn2 = const Color(0xFFC8C5CA);

  // Input Colors
  static Color white5 = white.withOpacity(.05);

  // BG Colors
  static Color bg1 = const Color.fromRGBO(113, 109, 136, 0.2);
  static Color bg2 = const Color.fromRGBO(113, 109, 136, 1);
}
