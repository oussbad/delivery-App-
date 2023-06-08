import 'package:boxpend_flutter_android_app/src/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

class TextBlocKWidget extends StatelessWidget {
  TextBlocKWidget.h1(this.text, {super.key, this.color})
      : style = AppStyles.h1.copyWith(color: color);

  TextBlocKWidget.h2(this.text, {super.key, this.color})
      : style = AppStyles.h2.copyWith(color: color);

  TextBlocKWidget.h3(this.text, {super.key, this.color})
      : style = AppStyles.h3.copyWith(color: color);

  TextBlocKWidget.title(this.text, {super.key, this.color})
      : style = AppStyles.title.copyWith(color: color);

  TextBlocKWidget.subTitlte(this.text, {super.key, this.color})
      : style = AppStyles.subTitle.copyWith(color: color);

  TextBlocKWidget.body(this.text, {super.key, this.color})
      : style = AppStyles.body.copyWith(color: color);

  TextBlocKWidget.caption(this.text, {super.key, this.color})
      : style = AppStyles.caption.copyWith(color: color);

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
