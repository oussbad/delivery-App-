import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppSpacing.s_12,
        height: AppSpacing.s_12,
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          color: AppPalette.white,
        ),
      ),
    );
  }
}
