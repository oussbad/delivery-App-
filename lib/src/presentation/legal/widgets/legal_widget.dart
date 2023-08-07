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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBlocKWidget.h3(title),
        GapWidget.spacing8(),
        TextBlocKWidget.body(description),
        GapWidget.spacing8(),
        if (bulleted.isEmpty)
          const SizedBox.shrink()
        else
          ..._buildBulleted(bulleted),
        GapWidget.spacing8(),
      ],
    );
  }

  List<Widget> _buildBulleted(List<String> bulleted) {
    return bulleted
        .map(
          (item) => TextBlocKWidget.body(item),
        )
        .toList();
  }
}
