import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.isLarge = false,
    this.icon,
    this.isDisabled = false,
  });

  final String label;
  final VoidCallback onPressed;
  final ButtonType type;
  final bool isLarge;
  final String? icon;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isLarge ? double.infinity : null,
      child: icon != null ? _buildButtonWithIcon() : _buildButton(),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: _setButtonStyle(),
      child: _buildTextButton(),
    );
  }

  Widget _buildButtonWithIcon() {
    return ElevatedButton.icon(
      onPressed: isDisabled ? null : onPressed,
      style: _setButtonStyle(),
      icon: SvgPicture.asset(
        icon!,
        color: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
      ),
      label: _buildTextButton(),
    );
  }

  Widget _buildTextButton() {
    return TextBlocKWidget.t16(
      label,
      color: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
    );
  }

  ButtonStyle? _setButtonStyle() {
    return ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(
        isDisabled ? AppPalette.disabledBtn1 : setBgColor(type),
      ),
      side: MaterialStateProperty.all(
        BorderSide(
          color: isDisabled ? AppPalette.disabledBtn1 : setBorderColor(type),
        ),
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(
          vertical: isLarge ? AppSpacing.s24 : AppSpacing.s20,
          horizontal: AppSpacing.s24,
        ),
      ),
    );
  }
}
