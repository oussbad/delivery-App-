import 'package:boxpend_flutter_android_app/src/app/helpers/app_dialogs.dart';
import 'package:boxpend_flutter_android_app/src/app/helpers/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
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
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s36),
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
        TextBlocKWidget.t24(
          StringsManager.welcomeBack,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.s24(),
        TextFieldWidget(
          controller: controller.emailController,
          placeholder: StringsManager.email,
          validator: Validator().required().isEmail().run,
        ),
        GapWidget.s16(),
        TextFieldWidget(
          isHidden: true,
          controller: controller.passwordController,
          placeholder: StringsManager.password,
          validator: Validator().required().password().run,
        ),
        GapWidget.s24(),
        // ButtonWidget(
        //   // onPressed: controller.signIn,
        //   onPressed: () => Get.
        //   label: StringsManager.continueTo,
        //   isExpanded: true,
        //   size: ButtonSize.large,
        // ),
        GapWidget.s8(),
        _buildAfterSignInButton(),
      ],
    );
  }

  Widget _buildAfterSignInButton() {
    return ButtonWidget(
      onPressed: controller.goToSignUpPage,
      type: ButtonType.text,
      label: StringsManager.needAnAccount,
    );
  }
}
