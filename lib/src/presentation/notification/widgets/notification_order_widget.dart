import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum OrderStatus { delivered, returned }

class NotificationOrderWidget extends StatelessWidget {
  const NotificationOrderWidget({super.key, required this.status, required this.orderId, required this.date});

  final OrderStatus status;
  final String orderId;
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
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: _setColor(),
                blurRadius: AppSpacing.s20,
                offset: const Offset(0, 0),
                spreadRadius: -6,
              )
            ],
          ),
          child: SvgPicture.asset(
            _setIcon(),
            color: _setColor(),
          ),
        ),
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
          text: StringsManager.order,
          style: TextStyle(
            fontSize: AppTypography.t16,
            fontWeight: AppTypography.w400,
            color: AppPalette.white.withOpacity(.7),
          ),
          children: [
            TextSpan(
              text: ' #$orderId ',
              style: TextStyle(
                fontSize: AppTypography.t16,
                fontWeight: AppTypography.w600,
                color: AppPalette.white,
              ),
            ),
            TextSpan(
              text: _setTitle(),
              style: const TextStyle(
                fontSize: AppTypography.t16,
                fontWeight: AppTypography.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _setIcon() {
    switch (status) {
      case OrderStatus.delivered:
        return AssetsManager.orderDoneIcon;
      case OrderStatus.returned:
        return AssetsManager.orderErrorIcon;
      default:
        return AssetsManager.orderDoneIcon;
    }
  }

  Color _setColor() {
    switch (status) {
      case OrderStatus.delivered:
        return AppPalette.success;
      case OrderStatus.returned:
        return AppPalette.danger;
      default:
        return AppPalette.success;
    }
  }

  String _setTitle() {
    switch (status) {
      case OrderStatus.delivered:
        return StringsManager.orderDelivered;
      case OrderStatus.returned:
        return StringsManager.orderReturned;
      default:
        return StringsManager.orderDelivered;
    }
  }
}
