import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationPage extends StatelessWidget {
  const EmailVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
            child: _buildColumn(),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.email_outlined,
          color: AppPalette.primarySwatch,
          size: AppTypography.sizeXXL * 2,
        ),
        GapWidget.spacing20(),
        TextBlocKWidget.subTitle(
          StringsManager.emailSent,
          color: AppPalette.white,
          textAlign: TextAlign.center,
        ),
        GapWidget.spacing8(),
        TextBlocKWidget.caption(
          StringsManager.emailSentDescription,
          color: AppPalette.text3,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
