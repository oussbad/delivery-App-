import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/drop_down_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/widgets/statistics_item_widget.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppPalette.bg4,
      child: Column(
        children: [
          HeaderWidget(
            title: StringsManager.statistics,
            actions: [
              DropdownWidget(
                onChanged: (value) {},
                value: 'Today',
                items: const [
                  'Item 1',
                  'Item 2',
                  'Item 3',
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(AppSpacing.s16),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: StatisticsItemWidget(
                        label: StringsManager.delivered,
                        total: 100,
                        type: DataStatus.delivered,
                      ),
                    ),
                    GapWidget.s16(axe: GapEnum.horizontal),
                    const Expanded(
                      child: StatisticsItemWidget(
                        label: StringsManager.returned,
                        total: 2,
                        type: DataStatus.returned,
                      ),
                    ),
                  ],
                ),
                GapWidget.s16(axe: GapEnum.horizontal),
                const StatisticsItemWidget(
                  label: StringsManager.total,
                  total: 102,
                  type: DataStatus.total,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
