import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({
    super.key,
    required this.icon,
    required this.title,
    this.color,
    this.trailing,
    this.onPressed,
  });

  final String icon;
  final String title;
  final Color? color;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(AppSpacing.r4),
      color: AppPalette.bg4,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSpacing.r4),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(AppSpacing.s24),
          decoration: BoxDecoration(
            color: color != null ? color!.withOpacity(.02) : AppPalette.white.withOpacity(.02),
            borderRadius: BorderRadius.circular(AppSpacing.r4),
          ),
          child: Row(
            children: [
              Center(
                child: SvgPicture.asset(
                  icon,
                  color: color != null ? color! : AppPalette.white.withOpacity(.7),
                ),
              ),
              GapWidget.s24(axe: GapEnum.horizontal),
              Expanded(
                child: TextBlocKWidget.t16(
                  title,
                  color: AppPalette.white,
                ),
              ),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
