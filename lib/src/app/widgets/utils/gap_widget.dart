import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

enum GapEnum { vertical, horizontal }

class GapWidget extends StatelessWidget {
  GapWidget.spacing8({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_8;

  GapWidget.spacing12({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_12;

  GapWidget.spacing20({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_20;

  GapWidget.spacing24({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_24;

  GapWidget.spacing28({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_28;

  GapWidget.spacing32({
    super.key,
    this.axe = GapEnum.vertical,
  }) : spacing = AppSpacing.s_32;

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
