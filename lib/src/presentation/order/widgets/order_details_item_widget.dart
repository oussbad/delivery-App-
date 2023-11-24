import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailsItemWidget extends StatelessWidget {
  const OrderDetailsItemWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onCopied,
  });

  final String icon;
  final String title;
  final VoidCallback? onCopied;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.s24),
      decoration: BoxDecoration(
        color: AppPalette.white.withOpacity(.02),
        borderRadius: BorderRadius.circular(AppSpacing.r4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.asset(
              icon,
              color: AppPalette.white.withOpacity(.7),
            ),
          ),
          GapWidget.s24(axe: GapEnum.horizontal),
          Expanded(
            child: TextBlocKWidget.t16(
              title,
              color: AppPalette.white.withOpacity(.7),
            ),
          ),
          onCopied != null
              ? Material(
                  shape: const CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.transparent,
                  child: InkWell(
                    radius: 200,
                    onTap: onCopied,
                    child: SvgPicture.asset(
                      AssetsManager.copyIcon,
                      color: AppPalette.disabledBtn1,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
