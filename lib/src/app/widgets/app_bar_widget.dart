import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.title,
    this.actions,
    this.withBackButton = false,
    this.withLogo = true,
  });

  final String? title;
  final List<Widget>? actions;
  final bool withBackButton;
  final bool withLogo;

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    List<Widget> leadingList = [];
    Widget leading = const SizedBox.shrink();

    if (withBackButton) {
      leadingList.add(_buildBackButton());
    }

    if (withLogo) {
      leadingList.add(_buildLogo());
    }

    if (!GetUtils.isNullOrBlank(title)!) {
      if (withBackButton) {
        leadingList.add(GapWidget.s16(axe: GapEnum.horizontal));
      }
      leadingList.add(_buildTitle());
    }

    if (leadingList.length > 1) {
      leading = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: leadingList,
      );
    } else {
      leading = leadingList[0];
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.s16),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Color(0xFF2B343B),
        gradient: RadialGradient(
          radius: 5,
          center: Alignment.topCenter,
          colors: [
            Color(0xFF2B343B),
            Color(0x002B343B),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading,
          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return SvgPicture.asset(
      AssetsManager.logo,
      width: 100,
    );
  }

  Widget _buildBackButton() {
    return InkWell(
      onTap: () => Get.back(),
      child: const Icon(Icons.arrow_back_rounded),
    );
  }

  Widget _buildTitle() => TextBlocKWidget.t16(title!);

  Widget _buildActions() {
    if (actions!.length > 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: actions!,
      );
    } else {
      return actions![0];
    }
  }
}
