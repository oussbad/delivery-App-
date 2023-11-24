import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class NotificationConnectionWidget extends StatelessWidget {
  const NotificationConnectionWidget({
    super.key,
    required this.status,
    required this.avatar,
    required this.username,
    required this.date,
  });

  final ConnectionStatus status;
  final String avatar;
  final String username;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      tileColor: AppPalette.white.withOpacity(.02),
      contentPadding: EdgeInsets.all(AppSpacing.s8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.r4),
      ),
      leading: AvatarWidget.widthStatus(
        asset: avatar,
        status: status,
      ),
      title: _buildTitle(),
      subtitle: TextBlocKWidget.t16(
        '12min ago',
        color: AppPalette.bg2,
        fontWeight: AppTypography.w400,
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSpacing.s8),
      child: RichText(
        text: TextSpan(
          text: username,
          style: TextStyle(
            fontSize: AppTypography.t16,
            fontWeight: AppTypography.w400,
            color: AppPalette.white,
          ),
          children: [
            TextSpan(
              text: _setTitle(),
              style: TextStyle(
                fontSize: AppTypography.t16,
                fontWeight: AppTypography.w600,
                color: AppPalette.white.withOpacity(.7),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _setTitle() {
    return status == ConnectionStatus.accepted ? StringsManager.invitationAccepted : StringsManager.invitationRejected;
  }
}
