import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final signinFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

//  void signin() => Get.offAllNamed(AppRoutes.home);

  void signIn() async {
    if (signinFormKey.currentState!.validate()) {
      Get.showOverlay(
        opacity: .8,
        loadingWidget: const LoaderWidget(),
        asyncFunction: () {
          return Future.delayed(
            const Duration(milliseconds: 5000),
            () {},
          );
        },
      );
    }
  }

  void goToSignUpPage() => Get.offAllNamed(AppRoutes.signUp);
}
