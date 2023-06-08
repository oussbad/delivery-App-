import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/buttons/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/inputs/checkbox_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/inputs/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Template extends GetView<TemplateController> {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.app.tr),
      ),
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextFieldWidget(
                  placeholder: 'Username',
                ),
                GapWidget.spacing12(),
                const CheckboxWidget(
                  label: 'Open payment gatway',
                  value: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
