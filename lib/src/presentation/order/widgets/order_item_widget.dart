import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    super.key,
    required this.state,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  final StateWidget state;
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(AppSpacing.r4),
      child: Container(
        padding: EdgeInsets.all(AppSpacing.s16),
        decoration: BoxDecoration(
          color: AppPalette.white.withOpacity(.02),
          borderRadius: BorderRadius.circular(AppSpacing.r4),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
              child: Center(child: state),
            ),
            GapWidget.s16(axe: GapEnum.horizontal),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBlocKWidget.t16(
                  title,
                  color: AppPalette.white,
                ),
                GapWidget.s8(),
                TextBlocKWidget.t14(
                  subtitle,
                  color: AppPalette.bg2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
