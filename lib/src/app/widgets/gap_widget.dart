import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

enum GapEnum { vertical, horizontal }

class GapWidget extends StatelessWidget {
  GapWidget.s8({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s8;

  GapWidget.s14({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s14;

  GapWidget.s16({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s16;

  GapWidget.s24({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s24;

  final double spacing;
  final GapEnum axe;

  @override
  Widget build(BuildContext context) {
    if (axe == GapEnum.vertical) {
      return _buildVerticalGap();
    } else {
      return _buildHorizontalGap();
    }
  }

  Widget _buildVerticalGap() {
    return SizedBox(
      height: spacing,
    );
  }

  Widget _buildHorizontalGap() {
    return SizedBox(
      width: spacing,
    );
  }
}
