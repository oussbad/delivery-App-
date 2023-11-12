import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
    required this.value,
    required this.items,
    this.type = ButtonType.primary,
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
        color: isDisabled ? AppPalette.disabledBtn1 : setBgColor(type),
        borderRadius: BorderRadius.circular(
          AppSpacing.r4,
        ),
        border: Border.all(
          color: isDisabled ? AppPalette.disabledBtn1 : setBorderColor(type),
        ),
      ),
      child: _buildDropdown(),
    );
  }

  Widget _buildDropdown() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        iconEnabledColor: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
        hint: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSpacing.s8,
            horizontal: AppSpacing.s8,
          ),
          child: TextBlocKWidget.t16(
            value,
            color: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
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
}
