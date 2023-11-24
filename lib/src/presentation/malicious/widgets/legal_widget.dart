import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/bullet_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class LegalWidget extends StatelessWidget {
  const LegalWidget({
    super.key,
    required this.title,
    required this.description,
    required this.bulleted,
  });

  final String title;
  final String description;
  final List<String> bulleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBlocKWidget.t16(title),
          GapWidget.s8(),
          TextBlocKWidget.t14(description),
          GapWidget.s8(),
          if (bulleted.isEmpty) const SizedBox.shrink() else ..._buildBulleted(bulleted),
          GapWidget.s8(),
        ],
      ),
    );
  }

  List<Widget> _buildBulleted(List<String> bulleted) {
    return bulleted
        .map(
          (item) => Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
                child: BulletWidget(
                  color: AppPalette.white,
                ),
              ),
              Expanded(
                child: TextBlocKWidget.t14(item),
              ),
            ],
          ),
        )
        .toList();
  }
}
