import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingContentWidget extends StatelessWidget {
  const OnBoardingContentWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.child,
  });

  final String image;
  final String title;
  final String subTitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: AppSpacing.s64 * 2.5,
            width: AppSpacing.s64 * 2.5,
          ),
          GapWidget.s24(),
          TextBlocKWidget.t16(
            title,
            textAlign: TextAlign.center,
          ),
          GapWidget.s8(),
          TextBlocKWidget.t14(
            subTitle,
            color: AppPalette.bg2,
            textAlign: TextAlign.center,
          ),
          GapWidget.s24(),
          child ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
