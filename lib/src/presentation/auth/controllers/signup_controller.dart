import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/message_widget.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signup_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum UserType { provider, delivery }

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  final signInUsecase = Get.find<SignUpUsecase>();

  final Rx<UserType> userType = UserType.provider.obs;
  final signupFormKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final RxBool isAccepted = true.obs;

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signUp() async {
    if (signupFormKey.currentState!.validate()) {
      if (isAccepted.value) {
        final result = await signInUsecase.call(User(
          email: emailController.text,
          password: passwordController.text,
          role: userType.value.name,
        ));
        return result.fold(
          (l) => showAppDialog(
            MessageWidget.failure(failure: l),
          ),
          (r) {
            goToSignInPage();
            showAppSnackbar(
              status: MessageStatus.success,
              message: StringsManager.signupgsuccess,
            );
          },
        );
      } else {
        showAppDialog(
          MessageWidget.error(
            message: StringsManager.acceptTerms,
          ),
        );
      }
    }
  }

  void onUserTypeChanged(UserType? value) => userType(value);

  void onIsAcceptedChanged(bool? value) => isAccepted(value);

  void goToTermsAndConditionsPage() => Get.toNamed(AppRoutes.terms);

  void goToPolicyPrivacyPage() => Get.toNamed(AppRoutes.policy);

  void goToSignInPage() => Get.offAllNamed(AppRoutes.signIn);
}
