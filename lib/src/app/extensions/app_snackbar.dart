import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/app_palette.dart';
import '../themes/app_spacing.dart';
import '../themes/app_typography.dart';
import '../widgets/utils/text_block_widget.dart';

enum SnackBarStatus { success, failure }

extension AppSnackbarExtension on GetInterface {
  // simple snack bar
  static void showAppSnackbar({
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
      borderRadius: AppSpacing.r_7 , 
      duration: const Duration(seconds: 2),
      backgroundColor: AppPalette.inputBg,
      padding: EdgeInsets.all(AppSpacing.s_8),
      margin: EdgeInsets.all(AppSpacing.s_12),
    );
  }

  // snack bar with action
  // static void showAppSnackbarWithAction({
  //   required String title,
  //   required String message,
  //   required String actionTitle,
  //   required Function actionFunction,
  //   required IconData? icon,
  //   SnackBarStatus? status = SnackBarStatus.success,
  // }) {
  //   Get.snackbar(
  //     title,
  //     message,
  //     icon: Icon(
  //       icon,
  //       size: AppTypography.sizeXL,
  //       color: status == SnackBarStatus.success
  //           ? AppPalette.success
  //           : AppPalette.danger,
  //     ) , 
  //     titleText: TextBlocKWidget.body(
  //       title,
  //       color: status == SnackBarStatus.success
  //           ? AppPalette.success
  //           : AppPalette.danger,
  //     ),
  //     messageText: TextBlocKWidget.caption(
  //       message,
  //       color: AppPalette.white,
  //     ),
  //     mainButton: TextButton(
  //       onPressed: () => actionFunction(),
  //       child: Text(
  //         actionTitle,
  //       ),
  //     ),
  //       duration: const Duration(seconds: 2),
  //       snackPosition: SnackPosition.BOTTOM,
  //       backgroundColor: AppPalette.inputBg,
  //       borderRadius: AppSpacing.r_7,
  //       padding: EdgeInsets.all(AppSpacing.s_8),
  //       margin: EdgeInsets.all(AppSpacing.s_12),
  //   );
  // }

  
  
}
