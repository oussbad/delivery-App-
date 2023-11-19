import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderDetailsActionsWidget extends StatelessWidget {
  const OrderDetailsActionsWidget({
    super.key,
    this.whatsappOnPressed,
    this.mapOnPressed,
    this.callOnPressed,
  });

  final VoidCallback? whatsappOnPressed;
  final VoidCallback? mapOnPressed;
  final VoidCallback? callOnPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppSpacing.r4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildAction(AssetsManager.whatsappIcon, whatsappOnPressed),
          GapWidget.s8(axe: GapEnum.horizontal),
          _buildAction(AssetsManager.mapIcon, mapOnPressed),
          GapWidget.s8(axe: GapEnum.horizontal),
          _buildAction(AssetsManager.callIcon, callOnPressed),
        ],
      ),
    );
  }

  Widget _buildAction(String icon, VoidCallback? onTaped) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTaped,
          child: Ink(
            color: AppPalette.info,
            padding: EdgeInsets.symmetric(
              vertical: AppSpacing.s20,
            ),
            child: SvgPicture.asset(
              icon,
              color: AppPalette.white,
            ),
          ),
        ),
      ),
    );
  }
}
