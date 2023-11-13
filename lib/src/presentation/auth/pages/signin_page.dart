import 'package:boxpend_flutter_android_app/src/app/helpers/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: controller.signinFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
            child: _buildColumn(),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextBlocKWidget.t14(
          StringsManager.welcomeBack.tr,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.s8(),
        TextFieldWidget(
          controller: controller.emailController,
          placeholder: StringsManager.email.tr,
          validator: Validator().required().isEmail().run,
        ),
        GapWidget.s8(),
        ButtonWidget(
          label: StringsManager.continueTo.tr,
          onPressed: controller.signin,
        ),
        GapWidget.s8(),
        _buildAfterSignInButton(),
      ],
    );
  }

  Widget _buildAfterSignInButton() {
    return TextButton(
      onPressed: controller.goToSignUpPage,
      child: TextBlocKWidget.t14(
        StringsManager.needAnAccount.tr,
        textAlign: TextAlign.center,
      ),
    );
  }
}
