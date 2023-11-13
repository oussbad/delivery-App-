import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, danger, outline, text }

Color? setBgColor(ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return AppPalette.btnColor1;
    case ButtonType.secondary:
      return AppPalette.btnColor3;
    case ButtonType.danger:
      return AppPalette.danger;
    case ButtonType.outline:
      return Colors.transparent;
    case ButtonType.text:
      return Colors.transparent;
    default:
      return null;
  }
}

Color setBorderColor(ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return AppPalette.btnColor1;
    case ButtonType.secondary:
      return AppPalette.btnColor3;
    case ButtonType.danger:
      return AppPalette.danger;
    case ButtonType.outline:
      return AppPalette.btnColor1;
    case ButtonType.text:
      return Colors.transparent;
    default:
      return Colors.transparent;
  }
}

Color? setTextColor(ButtonType type) {
  switch (type) {
    case ButtonType.primary:
      return AppPalette.btnColor2;
    case ButtonType.secondary:
      return AppPalette.btnColor1;
    case ButtonType.danger:
      return AppPalette.white;
    case ButtonType.outline:
      return AppPalette.btnColor1;
    case ButtonType.text:
      return AppPalette.btnColor1;
    default:
      return null;
  }
}
