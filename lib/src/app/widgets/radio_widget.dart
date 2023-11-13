import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class RadioWidget<T> extends StatelessWidget {
  const RadioWidget({
    super.key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String label;
  final String value;
  final String groupValue;
  final void Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          fillColor: MaterialStateProperty.all<Color>(
            AppPalette.btnColor1,
          ),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        GapWidget.s8(
          axe: GapEnum.horizontal,
        ),
        TextBlocKWidget.t16(
          label,
          color: AppPalette.white,
        ),
      ],
    );
  }
}
