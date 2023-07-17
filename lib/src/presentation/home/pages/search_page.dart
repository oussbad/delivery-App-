import 'package:flutter/material.dart';
import '../../../app/themes/app_spacing.dart';
import '../../../app/widgets/buttons/button_widget.dart';
import '../widgets/search_widget.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: AppSpacing.s_64,
            width: AppSpacing.s_64*3,
            child: ButtonWidget(
              onPressed: () {
                //Show SearchDelegate
                showSearch(
                  context: context,
                  delegate: SearchWidget(),
                );
              },
              label: "search",
            ),
          )),
    );
  }
}
