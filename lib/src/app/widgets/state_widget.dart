import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

enum StateType { success, warning, danger }

class StateWidget extends StatelessWidget {
  const StateWidget({
    super.key,
    required this.state,
  });

  final StateType state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.s8),
      decoration: BoxDecoration(
        color: _setColor(),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: _setColor(),
            blurRadius: AppSpacing.s20,
            offset: const Offset(0, 0),
            spreadRadius: -1,
          )
        ],
      ),
    );
  }

  Color _setColor() {
    switch (state) {
      case StateType.success:
        return AppPalette.success;
      case StateType.warning:
        return AppPalette.warning;
      case StateType.danger:
        return AppPalette.danger;
      default:
        return AppPalette.success;
    }
  }
}
