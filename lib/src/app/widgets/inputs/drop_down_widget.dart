import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, outline, text }

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
    required this.value,
    required this.items,
    required this.type,
    this.onChanged,
    this.isDisabled = false,
  }) : super(key: key);

  final String value;
  final List<String> items;
  final Function(String?)? onChanged;
  final ButtonType type;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.s16,
      ),
      decoration: BoxDecoration(
        color: _setBgColor(),
        borderRadius: BorderRadius.circular(
          AppSpacing.r4,
        ),
        border: Border.all(
          color: _setBorderColor(),
        ),
      ),
      child: _buildDropdown(),
    );
  }

  Widget _buildDropdown() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        iconEnabledColor: _setTextColor(),
        hint: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSpacing.s8,
            horizontal: AppSpacing.s8,
          ),
          child: TextBlocKWidget.t16(
            value,
            color: _setTextColor(),
          ),
        ),
        onChanged: isDisabled ? null : onChanged,
        items: items
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: TextBlocKWidget.t16(item),
              ),
            )
            .toList(),
      ),
    );
  }

  Color? _setBgColor() {
    switch (type) {
      case ButtonType.primary:
        return _isDisbledColor(
          AppPalette.btnColor1,
          AppPalette.disabledBtn1,
        );
      case ButtonType.secondary:
        return _isDisbledColor(
          AppPalette.btnColor3,
          Colors.transparent,
        );
      case ButtonType.outline:
        return _isDisbledColor(
          Colors.transparent,
          Colors.transparent,
        );
      case ButtonType.text:
        return _isDisbledColor(
          Colors.transparent,
          Colors.transparent,
        );
      default:
        return null;
    }
  }

  Color _setBorderColor() {
    switch (type) {
      case ButtonType.primary:
        return _isDisbledColor(
          AppPalette.btnColor1,
          AppPalette.disabledBtn1,
        );
      case ButtonType.secondary:
        return _isDisbledColor(
          AppPalette.btnColor3,
          Colors.transparent,
        );
      case ButtonType.outline:
        return _isDisbledColor(
          AppPalette.btnColor4,
          AppPalette.disabledBtn1,
        );
      case ButtonType.text:
        return _isDisbledColor(
          Colors.transparent,
          Colors.transparent,
        );
      default:
        return _isDisbledColor(
          Colors.transparent,
          Colors.transparent,
        );
    }
  }

  Color? _setTextColor() {
    switch (type) {
      case ButtonType.primary:
        return _isDisbledColor(
          AppPalette.btnColor2,
          AppPalette.disabledBtn2,
        );
      case ButtonType.secondary:
        return _isDisbledColor(
          AppPalette.btnColor1,
          AppPalette.disabledBtn2,
        );
      case ButtonType.outline:
        return _isDisbledColor(
          AppPalette.btnColor1,
          AppPalette.disabledBtn2,
        );
      case ButtonType.text:
        return _isDisbledColor(
          AppPalette.btnColor1,
          AppPalette.disabledBtn2,
        );
      default:
        return null;
    }
  }

  Color _isDisbledColor(Color primary, Color disabled) {
    return isDisabled ? disabled : primary;
  }
}
