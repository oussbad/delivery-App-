import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return ButtonWidget(
      label: value,
      icon: AssetsManager.dropdownIcon,
      onPressed: () => Get.bottomSheet(
        ColoredBox(
          color: const Color(0xFF1E272E),
          child: ColoredBox(
            color: AppPalette.bg1,
            child: ListView(
              shrinkWrap: true,
              children: items
                  .map(
                    (item) => ListTile(
                      onTap: () {
                        onChanged!(item);
                        Get.back();
                      },
                      title: TextBlocKWidget.t16(item),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.r4),
        ),
      ),
    );
  }

  // Widget _buildDropdown() {
  //   return DropdownButtonHideUnderline(
  //     child: DropdownButton<String>(
  //       iconEnabledColor: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
  //       hint: Padding(
  //         padding: EdgeInsets.symmetric(
  //           vertical: AppSpacing.s8,
  //           horizontal: AppSpacing.s8,
  //         ),
  //         child: TextBlocKWidget.t16(
  //           value,
  //           color: isDisabled ? AppPalette.disabledBtn2 : setTextColor(type),
  //         ),
  //       ),
  //       onChanged: isDisabled ? null : onChanged,
  //       items: items
  //           .map(
  //             (item) => DropdownMenuItem(
  //               value: item,
  //               child: TextBlocKWidget.t16(item),
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }
}
