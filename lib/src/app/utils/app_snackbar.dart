import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarStatus { success, failure }

class AppSnackbar {
  AppSnackbar._();

  static void show({
    required String title,
    required String message,
    required IconData icon,
    Duration? duration,
    SnackBarStatus? status = SnackBarStatus.success,
  }) {
    Get.snackbar(
      title,
      message,
      icon: Icon(
        icon,
        size: AppTypography.t14,
        color: status == SnackBarStatus.success ? AppPalette.success : AppPalette.danger,
      ),
      titleText: TextBlocKWidget.t18(
        title,
        color: status == SnackBarStatus.success ? AppPalette.success : AppPalette.danger,
      ),
      messageText: TextBlocKWidget.t18(
        message,
        color: AppPalette.white,
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: AppSpacing.r7,
      duration: const Duration(seconds: 2),
      padding: EdgeInsets.all(AppSpacing.s8),
      margin: EdgeInsets.all(AppSpacing.s14),
    );
  }
}
