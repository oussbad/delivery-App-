import 'package:boxpend_flutter_android_app/src/app/helpers/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/styles_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/buttons/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/inputs/radio_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/inputs/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/signup_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: controller.signupFormKey,
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
          StringsManager.welcomeToBoxpend.tr,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.spacing24(),
        _buildUserType(),
        GapWidget.spacing24(),
        TextFieldWidget(
          controller: controller.fullNameController,
          validator: Validator().required().run,
          placeholder: StringsManager.fullName.tr,
        ),
        GapWidget.spacing20(),
        TextFieldWidget(
          controller: controller.emailController,
          validator: Validator().required().isEmail().run,
          placeholder: StringsManager.email.tr,
        ),
        GapWidget.spacing12(),
        _buildCheckbox(),
        GapWidget.spacing24(),
        ButtonWidget(
          label: StringsManager.createAccount.tr,
          onPressed: controller.signup,
        ),
        GapWidget.spacing12(),
        _buildAfterSignUpButton(),
      ],
    );
  }

  Widget _buildCheckbox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => Checkbox(
            value: controller.isAccepted.value,
            onChanged: controller.onIsAcceptedChanged,
          ),
        ),
        GapWidget.spacing8(
          axe: GapEnum.horizontal,
        ),
        Expanded(
          child: _buildBeforeSignUpButton(),
        ),
      ],
    );
  }

  Widget _buildUserType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => RadioWidget<UserType>(
            label: StringsManager.provider.tr,
            value: UserType.provider,
            groupValue: controller.userType.value,
            onChanged: controller.onUserTypeChanged,
          ),
        ),
        GapWidget.spacing12(
          axe: GapEnum.horizontal,
        ),
        Obx(
          () => RadioWidget<UserType>(
            label: StringsManager.delivery.tr,
            value: UserType.delivery,
            groupValue: controller.userType.value,
            onChanged: controller.onUserTypeChanged,
          ),
        ),
      ],
    );
  }

  Widget _buildAfterSignUpButton() {
    return TextButton(
      onPressed: controller.goToSignInPage,
      child: TextBlocKWidget.body(
        StringsManager.haveAnAccount.tr,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildBeforeSignUpButton() {
    return RichText(
      text: TextSpan(
        text: StringsManager.beforeSigningUpAgreement.tr,
        style: StylesManager.body.copyWith(
          color: AppPalette.white,
        ),
        children: [
          TextSpan(
            text: ' ${StringsManager.termsAndConditions.tr}',
            style: StylesManager.body.copyWith(
              color: AppPalette.primarySwatch,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => controller.goToTermsAndConditionsPage(),
          ),
          TextSpan(
            text: ' ${StringsManager.and.tr}',
            style: StylesManager.body.copyWith(
              color: AppPalette.white,
            ),
          ),
          TextSpan(
            text: ' ${StringsManager.policyPrivacy.tr}',
            style: StylesManager.body.copyWith(
              color: AppPalette.primarySwatch,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => controller.goToPolicyPrivacyPage(),
          ),
        ],
      ),
    );
  }
}
