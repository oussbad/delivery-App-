import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/message_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackBarStatus { success, failure }

void showSnackbar({
  required SnackBarStatus status,
  required String message,
}) {
  Get.rawSnackbar(
    icon: CircleAvatar(
      radius: AppSpacing.s14,
      backgroundColor: _setColor(status),
      child: Icon(
        _setIcon(status),
        color: AppPalette.white,
      ),
    ),
    messageText: TextBlocKWidget.t16(message),
    borderRadius: AppSpacing.r4,
    backgroundColor: AppPalette.white.withOpacity(.02),
    padding: EdgeInsets.all(AppSpacing.s24),
    margin: EdgeInsets.all(AppSpacing.s16),
  );
}

// void showDialog({
//   required SnackBarStatus status,
//   required String message,
// }) {
//   Get.dialog(
//     Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(AppSpacing.r4),
//       ),
//       child: MessageWidget,
//     ),
//   );
// }

Color _setColor(SnackBarStatus status) {
  if (status == SnackBarStatus.success) {
    return AppPalette.success;
  } else {
    return AppPalette.danger;
  }
}

IconData _setIcon(SnackBarStatus status) {
  if (status == SnackBarStatus.success) {
    return Icons.check_rounded;
  } else {
    return Icons.close_rounded;
  }
}
