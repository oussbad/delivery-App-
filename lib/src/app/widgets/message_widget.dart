import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class _MessageBasicWidget extends StatelessWidget {
  const _MessageBasicWidget({
    super.key,
    required this.message,
    required this.icon,
    required this.color,
    this.withBackButton = false,
  });

  final String message;
  final IconData icon;
  final Color color;
  final bool withBackButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.s8),
      child: Center(
        child: _buildMainWidget(
          icon,
          color,
          message,
          context,
        ),
      ),
    );
  }

  Widget _buildMainWidget(
    IconData messageIcon,
    Color messageIconColor,
    String messageText,
    BuildContext context,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          messageIcon,
          color: messageIconColor,
          size: AppSpacing.s40,
        ),
        GapWidget.s16(),
        TextBlocKWidget.t14(
          messageText,
          textAlign: TextAlign.center,
        ),
        ..._buildbackButton(context),
      ],
    );
  }

  Iterable<Widget> _buildbackButton(BuildContext context) {
    return [
      GapWidget.s8(),
      withBackButton
          ? TextButton(
              onPressed: () => Get.back(),
              child: TextBlocKWidget.t14(
                StringsManager.notFound,
                color: AppPalette.primarySwatch,
              ),
            )
          : const SizedBox.shrink(),
    ];
  }
}

class MessageWidget extends _MessageBasicWidget {
  MessageWidget.success({
    super.key,
    super.message = StringsManager.success,
    super.withBackButton,
  }) : super(
          color: AppPalette.success,
          icon: Icons.check_circle_rounded,
        );

  MessageWidget.failure({
    super.key,
    required Failure failure,
    super.withBackButton,
  }) : super(
          message: _setErrorMessage(failure),
          color: _setErrorColor(failure),
          icon: _setErrorIcon(failure),
        );

  MessageWidget.error({
    super.key,
    super.message = StringsManager.error,
    super.withBackButton,
  }) : super(
          color: AppPalette.danger,
          icon: Icons.cancel_rounded,
        );

  MessageWidget.empty({
    super.key,
    super.message = StringsManager.empty,
    super.withBackButton,
  }) : super(
          color: AppPalette.warning,
          icon: Icons.info_rounded,
        );
}

String _setErrorMessage(Failure failure) {
  if (failure is NetworkFailure) {
    return StringsManager.network;
  } else {
    return StringsManager.error;
  }
}

Color _setErrorColor(Failure failure) {
  if (failure is NetworkFailure) {
    return AppPalette.warning;
  } else {
    return AppPalette.danger;
  }
}

IconData _setErrorIcon(Failure failure) {
  if (failure is ServerFailure) {
    return Icons.cancel_rounded;
  } else if (failure is NetworkFailure) {
    return Icons.signal_wifi_connected_no_internet_4_rounded;
  } else {
    return Icons.cancel_rounded;
  }
}
