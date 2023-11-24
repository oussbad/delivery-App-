import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class ConnectionItemWidget extends StatelessWidget {
  const ConnectionItemWidget({
    super.key,
    required this.avatar,
    required this.title,
    required this.subtitle,
  });
  final String avatar;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      tileColor: AppPalette.white.withOpacity(.02),
      contentPadding: EdgeInsets.symmetric(
        vertical: AppSpacing.s8,
        horizontal: AppSpacing.s16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.r4),
      ),
      leading: AvatarWidget(
        asset: avatar,
        size: AvatarSize.small,
      ),
      title: TextBlocKWidget.t16(
        title,
        fontWeight: AppTypography.w400,
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(bottom: AppSpacing.s8),
        child: TextBlocKWidget.t16(
          subtitle,
          color: AppPalette.bg2,
          fontWeight: AppTypography.w400,
        ),
      ),
    );
  }
}
