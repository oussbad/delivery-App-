import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class TextBlocKWidget extends StatelessWidget {
  TextBlocKWidget.h1(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.h1.copyWith(
          color: color,
        );

  TextBlocKWidget.h2(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.h2.copyWith(
          color: color,
        );

  TextBlocKWidget.h3(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.h3.copyWith(
          color: color,
        );

  TextBlocKWidget.title(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.title.copyWith(
          color: color,
        );

  TextBlocKWidget.subTitle(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.subTitle.copyWith(
          color: color,
        );

  TextBlocKWidget.body(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.body.copyWith(
          color: color,
        );

  TextBlocKWidget.caption(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = AppTypography.caption.copyWith(
          color: color,
        );

  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
