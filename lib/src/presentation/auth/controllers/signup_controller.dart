import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/utils/app_snackbar.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum UserType { provider, delivery }

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  final RxString userType = 'Provider'.obs;
  final signupFormKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final RxBool isAccepted = true.obs;

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    super.onClose();
  }

  void signup() async {
    if (signupFormKey.currentState!.validate()) {
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

  void onUserTypeChanged(String? value) => userType(value);

  void onIsAcceptedChanged(bool? value) => isAccepted(value);

  void goToTermsAndConditionsPage() => Get.toNamed(AppRoutes.terms);

  void goToPolicyPrivacyPage() => Get.toNamed(AppRoutes.policy);

  void goToSignInPage() => Get.offAllNamed(AppRoutes.signIn);
}
