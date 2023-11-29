import 'package:boxpend_flutter_android_app/src/app/helpers/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        withLogo: false,
        withBackButton: true,
        title: StringsManager.changePassword,
      ),
      body: _buildForm(),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.s16),
      child: Form(
        key: controller.changePasswordFormKey,
        child: Column(
          children: [
            TextFieldWidget(
              controller: controller.passwordController,
              placeholder: StringsManager.password,
              validator: Validator().required().password().run,
            ),
            GapWidget.s16(),
            TextFieldWidget(
              controller: controller.newPasswordController,
              placeholder: StringsManager.newPassword,
              validator: Validator()
                  .required()
                  .confirmPassword(
                    controller.passwordController.text,
                    controller.newPasswordController.text,
                  )
                  .run,
            ),
            GapWidget.s24(),
            ButtonWidget(
              onPressed: controller.changePassword,
              label: StringsManager.submit,
              isExpanded: true,
              size: ButtonSize.large,
            ),
          ],
        ),
      ),
    );
  }
}
