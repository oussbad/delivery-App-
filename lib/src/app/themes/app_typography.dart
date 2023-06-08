import 'package:flutter/cupertino.dart';

class AppTypography {
  AppTypography._();

  static const String familyInter = 'Inter';

  static const double sizeXXS = 8;
  static const double sizeXS = 12;
  static const double sizeSM = 16;
  static const double sizeSL = 20;
  static const double sizeMD = 24;
  static const double sizeLG = 28;
  static const double sizeXL = 30;
  static const double sizeXXL = 34;

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;

  static const TextStyle h1 = TextStyle(
    fontSize: sizeXXL,
    fontWeight: regular,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: sizeLG,
    fontWeight: semiBold,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: sizeMD,
    fontWeight: semiBold,
  );

  static const TextStyle title = TextStyle(
    fontSize: sizeXL,
    fontWeight: bold,
  );

  static const TextStyle subTitle = TextStyle(
    fontSize: sizeSL,
    fontWeight: regular,
  );
  static const TextStyle body = TextStyle(
    fontSize: sizeSM,
    fontWeight: regular,
  );

  static const TextStyle caption = TextStyle(
    fontSize: sizeXS,
    fontWeight: regular,
  );
}
