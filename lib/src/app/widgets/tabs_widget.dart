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
    return Material(
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
    return TabBar(
      tabs: tabs
          .map(
            (tab) => Tab(
              text: tab,
            ),
          )
          .toList(),
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
