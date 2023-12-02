import 'package:boxpend_flutter_android_app/src/app/core/services/token_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/message_widget.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signin_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final signInUsecase = Get.find<SignInUsecase>();
  final tokenStorage = Get.find<TokenService>();

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
          MessageWidget.failure(failure: l),
        ),
        (r) {
          tokenStorage.setToken(r.token!);
          Get.offAllNamed(AppRoutes.home);
          showAppSnackbar(
            status: MessageStatus.success,
            message: StringsManager.signinSuccess,
          );
        },
      );
    }
  }

  void goToSignUpPage() => Get.offAllNamed(AppRoutes.signUp);
}
