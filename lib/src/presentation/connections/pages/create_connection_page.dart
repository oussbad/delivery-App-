import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class CreateConnectionPage extends StatelessWidget {
  const CreateConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.r4),
      ),
      child: Container(
        height: 250,
        padding: EdgeInsets.all(AppSpacing.s24),
        color: AppPalette.bg4,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBlocKWidget.t16(
                StringsManager.newConnection,
                textAlign: TextAlign.start,
              ),
              GapWidget.s24(),
              const TextFieldWidget(
                placeholder: StringsManager.email,
              ),
              GapWidget.s16(),
              ButtonWidget(
                size: ButtonSize.large,
                isExpanded: true,
                label: StringsManager.submit,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
