import 'package:boxpend_flutter_android_app/src/app/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class TextBlocKWidget extends StatelessWidget {
  TextBlocKWidget.h1(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.h1.copyWith(
          color: color,
        );

  TextBlocKWidget.h2(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.h2.copyWith(
          color: color,
        );

  TextBlocKWidget.h3(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.h3.copyWith(
          color: color,
        );

  TextBlocKWidget.title(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.title.copyWith(
          color: color,
        );

  TextBlocKWidget.subTitle(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.subTitle.copyWith(
          color: color,
        );

  TextBlocKWidget.body(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.body.copyWith(
          color: color,
        );

  TextBlocKWidget.caption(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  }) : style = StylesManager.caption.copyWith(
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
