import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class OrderItemwWidget extends StatelessWidget {
  const OrderItemwWidget({
    super.key,
    required this.state,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final StateWidget state;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppPalette.bg1,
        borderRadius: BorderRadius.circular(AppSpacing.s8),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          height: AppSpacing.s20,
          width: AppSpacing.s20,
          margin: EdgeInsets.symmetric(vertical: AppSpacing.s16),
          child: state,
        ),
        title: TextBlocKWidget.t24(
          title,
          color: AppPalette.white,
          fontWeight: FontWeight.bold,
        ),
        subtitle: TextBlocKWidget.t16(
          subtitle,
          color: AppPalette.bg2,
          fontWeight: FontWeight.normal,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s24,
        ),
      ),
    );
  }
}

// custom list tile

class OrderItemwWidget2 extends StatelessWidget {
  const OrderItemwWidget2({super.key, required this.title, required this.subtitle, required this.state});
  final String title;
  final String subtitle;
  final StateWidget state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.s14),
      decoration: BoxDecoration(
        color: AppPalette.bg1,
        borderRadius: BorderRadius.circular(AppSpacing.s8),
      ),
      child: Row(
        children: [
          Container(width: 20, height: 20, margin: EdgeInsets.symmetric(horizontal: AppSpacing.s16), child: state),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBlocKWidget.t24(
                title,
                color: AppPalette.white,
                fontWeight: FontWeight.bold,
              ),
              TextBlocKWidget.t16(
                subtitle,
                color: AppPalette.bg2,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
