import 'package:boxpend_flutter_android_app/src/app/utils/validators.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/radio_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
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
          StringsManager.welcomeToBoxpend.tr,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.s24(),
        _buildUserType(),
        GapWidget.s16(),
        TextFieldWidget(
          controller: controller.fullNameController,
          validator: Validator().required().run,
          placeholder: StringsManager.fullName.tr,
        ),
        GapWidget.s16(),
        TextFieldWidget(
          controller: controller.emailController,
          validator: Validator().required().isEmail().run,
          placeholder: StringsManager.email.tr,
        ),
        GapWidget.s16(),
        TextFieldWidget(
          isHidden: true,
          controller: controller.passwordController,
          placeholder: StringsManager.password,
          validator: Validator().required().password().run,
        ),
        GapWidget.s16(),
        _buildCheckbox(),
        GapWidget.s24(),
        ButtonWidget(
          label: StringsManager.createAccount.tr,
          onPressed: () => showAppOverlay(controller.signUp),
          isExpanded: true,
          size: ButtonSize.large,
        ),
        GapWidget.s8(),
        _buildAfterSignUpButton(),
      ],
    );
  }

  Widget _buildCheckbox() {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            checkColor: AppPalette.btnColor2,
            fillColor: MaterialStateProperty.all<Color>(
              AppPalette.btnColor1,
            ),
            value: controller.isAccepted.value,
            onChanged: controller.onIsAcceptedChanged,
          ),
        ),
        GapWidget.s8(
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
        GapWidget.s8(axe: GapEnum.horizontal),
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
    return ButtonWidget(
      onPressed: controller.goToSignInPage,
      type: ButtonType.text,
      label: StringsManager.haveAnAccount,
    );
  }

  Widget _buildBeforeSignUpButton() {
    return RichText(
      text: TextSpan(
        text: StringsManager.beforeSigningUpAgreement.tr,
        style: TextStyle(
          fontSize: AppTypography.t14,
          color: AppPalette.white,
        ),
        children: [
          TextSpan(
            text: ' ${StringsManager.termsAndConditions.tr}',
            style: TextStyle(
              fontSize: AppTypography.t14,
              color: AppPalette.primarySwatch,
            ),
            recognizer: TapGestureRecognizer()..onTap = () => controller.goToTermsAndConditionsPage(),
          ),
          TextSpan(
            text: ' ${StringsManager.and.tr}',
            style: TextStyle(
              fontSize: AppTypography.t14,
              color: AppPalette.white,
            ),
          ),
          TextSpan(
            text: ' ${StringsManager.policyPrivacy.tr}',
            style: TextStyle(
              fontSize: AppTypography.t14,
              color: AppPalette.primarySwatch,
            ),
            recognizer: TapGestureRecognizer()..onTap = () => controller.goToPolicyPrivacyPage(),
          ),
        ],
      ),
    );
  }
}
