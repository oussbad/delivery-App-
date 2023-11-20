import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppSpacing.s20,
        horizontal: AppSpacing.s16,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppPalette.tabsBorderColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTitle(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [...actions!],
          )
        ],
      ),
    );
  }

  Widget _buildTitle() => TextBlocKWidget.t24(title);
}
