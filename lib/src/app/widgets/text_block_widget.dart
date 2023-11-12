import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class TextBlocKWidget extends StatelessWidget {
  TextBlocKWidget.t24(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  }) : style = TextStyle(
          color: color,
          fontSize: AppTypography.t24,
          fontWeight: fontWeight ?? AppTypography.w700,
        );

  TextBlocKWidget.t18(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  }) : style = TextStyle(
          color: color,
          fontSize: AppTypography.t18,
          fontWeight: fontWeight ?? AppTypography.w500,
        );

  TextBlocKWidget.t16(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  }) : style = TextStyle(
          color: color,
          fontSize: AppTypography.t16,
          fontWeight: fontWeight ?? AppTypography.w600,
        );

  TextBlocKWidget.t14(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
  }) : style = TextStyle(
          color: color,
          fontSize: AppTypography.t14,
          fontWeight: fontWeight ?? AppTypography.w500,
        );

  final String text;
  final TextStyle style;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
