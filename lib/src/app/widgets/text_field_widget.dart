import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.placeholder,
    this.type,
    this.controller,
    this.initialValue,
    this.validator,
    this.isHidden = false,
    this.isTextarea = false,
  });

  final String placeholder;
  final TextInputType? type;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isHidden;
  final bool isTextarea;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      validator: validator,
      obscureText: isHidden,
      keyboardType: type,
      style: TextStyle(
        color: AppPalette.white,
        fontSize: AppTypography.t16,
      ),
      decoration: _buildDecoration(),
      maxLines: isTextarea ? 3 : 1,
    );
  }

  InputDecoration? _buildDecoration() {
    return InputDecoration(
      hintText: placeholder,
      hintStyle: TextStyle(
        color: AppPalette.disabledBtn1,
        fontSize: AppTypography.t16,
      ),
      filled: true,
      fillColor: AppPalette.white5,
      border: _setInputBorder(AppPalette.white5),
      enabledBorder: _setInputBorder(AppPalette.white5),
      errorBorder: _setInputBorder(AppPalette.danger),
      isDense: true,
      prefix: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s8,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppSpacing.s20,
      ),
    );
  }

  InputBorder? _setInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.all(
        Radius.circular(AppSpacing.r4),
      ),
    );
  }
}
