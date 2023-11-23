import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

enum DataStatus { delivered, total, returned }

class StatisticsItemWidget extends StatelessWidget {
  const StatisticsItemWidget({
    super.key,
    required this.type,
    required this.label,
    required this.total,
  });

  final DataStatus type;
  final String label;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppSpacing.s20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacing.r4),
        ),
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppSpacing.r4),
              ),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(AppSpacing.s20),
            decoration: BoxDecoration(
              color: _setColor(type).withOpacity(.06),
              border: Border(
                left: BorderSide(
                  color: _setColor(type),
                  width: 3,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBlocKWidget.t16(label),
                GapWidget.s8(),
                TextBlocKWidget.t24(
                  total.toString(),
                  color: _setColor(type),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _setColor(DataStatus type) {
    switch (type) {
      case DataStatus.delivered:
        return AppPalette.success;
      case DataStatus.total:
        return AppPalette.primarySwatch;
      case DataStatus.returned:
        return AppPalette.danger;
      default:
        return AppPalette.success;
    }
  }
}
