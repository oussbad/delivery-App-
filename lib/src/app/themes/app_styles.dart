import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  static const TextStyle h1 = TextStyle(
    fontSize: AppTypography.sizeXXL,
    fontWeight: AppTypography.regular,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: AppTypography.sizeLG,
    fontWeight: AppTypography.semiBold,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: AppTypography.sizeMD,
    fontWeight: AppTypography.semiBold,
  );

  static const TextStyle title = TextStyle(
    fontSize: AppTypography.sizeXL,
    fontWeight: AppTypography.bold,
  );

  static const TextStyle subTitle = TextStyle(
    fontSize: AppTypography.sizeSL,
    fontWeight: AppTypography.regular,
  );
  static const TextStyle body = TextStyle(
    fontSize: AppTypography.sizeSM,
    fontWeight: AppTypography.regular,
  );

  static const TextStyle caption = TextStyle(
    fontSize: AppTypography.sizeXS,
    fontWeight: AppTypography.regular,
  );
}
