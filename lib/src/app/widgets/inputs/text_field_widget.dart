import 'package:boxpend_flutter_android_app/src/app/resources/styles_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.placeholder,
    this.type,
    this.controller,
    this.validator,
    this.isHidden = false,
  });

  final String placeholder;
  final TextInputType? type;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? isHidden;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isHidden!,
      keyboardType: type,
      style: StylesManager.body.copyWith(
        color: AppPalette.white,
      ),
      decoration: _buildDecoration(),
    );
  }

  InputDecoration? _buildDecoration() {
    return InputDecoration(
      hintText: placeholder,
      hintStyle: StylesManager.body,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.r_7),
        ),
      ),
      isDense: true,
      prefix: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s_12,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppSpacing.s_20,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppPalette.danger,
        ),
      ),
      errorStyle: StylesManager.body.copyWith(
        color: AppPalette.danger,
      ),
    );
  }
}
