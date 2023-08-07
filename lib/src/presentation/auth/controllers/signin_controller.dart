import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/utils/app_snackbar.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  final signinFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  void signin() => Get.offAllNamed(AppRoutes.home);

  void signinn() async {
    if (signinFormKey.currentState!.validate()) {
      Get.showOverlay(
        opacity: .8,
        loadingWidget: const LoaderWidget(),
        asyncFunction: () {
          return Future.delayed(
            const Duration(milliseconds: 5000),
            () {
              if (1 != 1) {
                Get.back();
                AppSnackbar.show(
                  title: 'title',
                  message: 'message',
                  icon: Icons.info,
                );
                Get.offAllNamed(AppRoutes.home);
              } else {
                AppSnackbar.show(
                  title: 'title',
                  message: 'message',
                  status: SnackBarStatus.failure,
                  icon: Icons.info,
                );
              }
            },
          );
        },
      );
    }
  }

  void goToSignUpPage() => Get.offAllNamed(AppRoutes.signUp);
}
