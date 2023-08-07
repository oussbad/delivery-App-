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
            height: AppSpacing.s_64 * 2.5,
            width: AppSpacing.s_64 * 2.5,
          ),
          GapWidget.spacing28(),
          TextBlocKWidget.subTitle(
            title,
            color: AppPalette.white,
            textAlign: TextAlign.center,
          ),
          GapWidget.spacing12(),
          TextBlocKWidget.caption(
            subTitle,
            color: AppPalette.text3,
            textAlign: TextAlign.center,
          ),
          GapWidget.spacing28(),
          child ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
