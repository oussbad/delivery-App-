import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
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
        size: AppTypography.sizeXL,
        color: status == SnackBarStatus.success
            ? AppPalette.success
            : AppPalette.danger,
      ),
      titleText: TextBlocKWidget.body(
        title,
        color: status == SnackBarStatus.success
            ? AppPalette.success
            : AppPalette.danger,
      ),
      messageText: TextBlocKWidget.caption(
        message,
        color: AppPalette.white,
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: AppSpacing.r_7,
      duration: const Duration(seconds: 2),
      backgroundColor: AppPalette.inputBg,
      padding: EdgeInsets.all(AppSpacing.s_8),
      margin: EdgeInsets.all(AppSpacing.s_12),
    );
  }
}
