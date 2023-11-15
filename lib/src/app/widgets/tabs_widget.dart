import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    super.key,
    required this.tabs,
    required this.tabViews,
  });

  final List<String> tabs;
  final List<Widget> tabViews;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: tabs.length,
        child: Column(
          children: [
            _buildTabs(),
            _buildTabViews(),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppPalette.tabsBorderColor,
          ),
        ),
      ),
      child: TabBar(
        indicatorWeight: 2.5,
        indicatorColor: AppPalette.info,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelStyle: const TextStyle(
          fontWeight: AppTypography.w400,
        ),
        labelColor: AppPalette.info,
        unselectedLabelColor: AppPalette.btnColor4,
        labelStyle: const TextStyle(
          fontSize: AppTypography.t16,
          fontWeight: AppTypography.w600,
        ),
        tabs: tabs
            .map(
              (tab) => Tab(
                text: tab,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildTabViews() {
    return Expanded(
      child: TabBarView(
        children: tabViews,
      ),
    );
  }
}
