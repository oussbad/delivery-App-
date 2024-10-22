import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/controllers/onboarding_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/widgets/indicator_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/widgets/onboarding_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.s20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildPageView(),
            _buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
      physics: const PageScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.onPageChanged,
      children: [
        const OnBoardingContentWidget(
          image: AssetsManager.onBoarding1,
          title: StringsManager.onBoardingTitle1,
          subTitle: StringsManager.onBoardingSubTitle2,
        ),
        OnBoardingContentWidget(
          image: AssetsManager.onBoarding2,
          title: StringsManager.onBoardingTitle2,
          subTitle: StringsManager.onBoardingSubTitle2,
          child: ButtonWidget(
            isExpanded: true,
            size: ButtonSize.large,
            label: StringsManager.getStarted,
            onPressed: () {
              controller.onSkip();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildIndicator() {
    return Obx(
      () => Positioned(
        bottom: AppSpacing.s24,
        child: IndicatorWidget(
          itemCount: controller.itemCount,
          currentIndex: controller.index.value,
        ),
      ),
    );
  }
}
