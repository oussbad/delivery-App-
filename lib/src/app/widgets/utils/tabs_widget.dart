import 'package:flutter/material.dart';

class TabsWidget extends StatelessWidget {
  
  late int length;
  List<Widget>? page = [];
  List<Widget>? tabs = [];
  

  TabsWidget({
    super.key,
    required this.length,
    required this.page,
    required this.tabs,
  });



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(" Tabbar test "),
          centerTitle: true,
        ),
        body: Column(
          children:  [
            TabBar(
              tabs: tabs!,      
            ),
            Expanded(
              child: TabBarView(
                children: page!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
