import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signin_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final signInUsecase = Get.find<SignInUsecase>();

  final signinFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void signIn() async {
    if (signinFormKey.currentState!.validate()) {
      final result = await signInUsecase.call(
        emailController.text,
        passwordController.text,
      );

      return result.fold(
        (l) => showAppDialog(
          status: MessageStatus.failure,
        ),
        (r) {
          showAppSnackbar(
            status: MessageStatus.success,
            message: 'Succefuly logged!',
          );
        },
      );
    }
  }

  void goToSignUpPage() => Get.offAllNamed(AppRoutes.signUp);
}
