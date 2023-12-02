import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/loader_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/message_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum MessageStatus { success, failure }

void showAppSnackbar({
  required MessageStatus status,
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

void showAppDialog(MessageWidget message) {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.r4),
      ),
      child: Container(
        height: 200,
        color: AppPalette.bg4,
        child: Center(
          child: message,
        ),
      ),
    ),
  );
}

Color _setColor(MessageStatus status) {
  if (status == MessageStatus.success) {
    return AppPalette.success;
  } else {
    return AppPalette.danger;
  }
}

IconData _setIcon(MessageStatus status) {
  if (status == MessageStatus.success) {
    return Icons.check_rounded;
  } else {
    return Icons.close_rounded;
  }
}

showAppOverlay(future) {
  Get.showOverlay(
    opacity: .8,
    loadingWidget: const LoaderWidget(),
    asyncFunction: () {
      return Future.delayed(
        const Duration(milliseconds: 500),
        future,
      );
    },
  );
}
