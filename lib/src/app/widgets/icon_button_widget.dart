import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isPrimary = true,
  });

  final String icon;
  final VoidCallback onPressed;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return isPrimary ? _buildCircularIconButton() : _buildIconButton();
  }

  Widget _buildIconButton() {
    return InkWell(
      radius: AppSpacing.r7,
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(AppSpacing.s14),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: AppPalette.btnColor1,
          ),
          borderRadius: BorderRadius.circular(
            AppSpacing.r7,
          ),
        ),
        child: _buildIcon(),
      ),
    );
  }

  Widget _buildCircularIconButton() {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(AppSpacing.s16),
            decoration: BoxDecoration(
              color: AppPalette.btnColor5,
            ),
            child: _buildIcon(),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return SvgPicture.asset(
      icon,
      color: AppPalette.btnColor1,
    );
  }
}
