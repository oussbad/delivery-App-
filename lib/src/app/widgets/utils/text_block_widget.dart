import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class TextBlocKWidget extends StatelessWidget {
  TextBlocKWidget.h1(this.text, {super.key, this.color})
      : style = AppTypography.h1.copyWith(color: color);

  TextBlocKWidget.h2(this.text, {super.key, this.color})
      : style = AppTypography.h2.copyWith(color: color);

  TextBlocKWidget.h3(this.text, {super.key, this.color})
      : style = AppTypography.h3.copyWith(color: color);

  TextBlocKWidget.title(this.text, {super.key, this.color})
      : style = AppTypography.title.copyWith(color: color);

  TextBlocKWidget.subTitlte(this.text, {super.key, this.color})
      : style = AppTypography.subTitle.copyWith(color: color);

  TextBlocKWidget.body(this.text, {super.key, this.color})
      : style = AppTypography.body.copyWith(color: color);

  TextBlocKWidget.caption(this.text, {super.key, this.color})
      : style = AppTypography.caption.copyWith(color: color);

  final String text;
  final TextStyle style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
