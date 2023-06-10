import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/buttons/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/inputs/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
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
        TextBlocKWidget.title(
          StringsManager.welcomeBack,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.spacing24(),
        const TextFieldWidget(
          placeholder: StringsManager.email,
        ),
        GapWidget.spacing24(),
        ButtonWidget(
          label: StringsManager.continueTo,
          onPressed: () {},
        ),
        GapWidget.spacing12(),
        _buildAfterSignInButton(),
      ],
    );
  }

  Widget _buildAfterSignInButton() {
    return TextButton(
      onPressed: controller.goToSignUpPage,
      child: TextBlocKWidget.body(
        StringsManager.needAnAccount,
        textAlign: TextAlign.center,
      ),
    );
  }
}
