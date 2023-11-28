import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlidableModel {
  final String icon;
  final Color? color;
  final VoidCallback? onPressed;

  SlidableModel({
    required this.icon,
    this.color,
    this.onPressed,
  });
}

class SlidableWidget extends StatelessWidget {
  const SlidableWidget({
    super.key,
    required this.children,
    required this.child,
  });

  final List<SlidableModel> children;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    for (int i = 0; i < children.length; i++) {
      widgets.add(
        _buildSildableItem(
          children[i].icon,
          children[i].color,
          children[i].onPressed,
        ),
      );
      if (i != children.length - 1) {
        widgets.add(const SizedBox(width: 2));
      }
    }

    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: widgets,
      ),
      child: child,
    );
  }

  Widget _buildSildableItem(
    String icon,
    Color? color,
    VoidCallback? onPressed,
  ) {
    return Expanded(
      child: SizedBox.expand(
        child: Material(
          child: InkWell(
            onTap: onPressed,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacing.r4),
                color: color ?? AppPalette.info,
              ),
              padding: EdgeInsets.symmetric(
                vertical: AppSpacing.s20,
              ),
              child: SvgPicture.asset(
                icon,
                color: AppPalette.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
