import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  static ChangePasswordController get to => Get.find();

  final changePasswordFormKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final newPasswordController = TextEditingController();

  @override
  void onClose() {
    passwordController.dispose();
    newPasswordController.dispose();
    super.onClose();
  }

  void changePassword() {
    if (changePasswordFormKey.currentState!.validate()) {
      return;
    }
  }
}
