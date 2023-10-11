import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;
  final String? selectedValue;

  DropdownWidget({
    Key? key,
    required this.items,
    required this.onChanged,
    this.selectedValue,
    // Default text when no item is selected
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween, // Icon on the right
        children: [

          DropdownButton<String>(
            value: selectedValue,
            onChanged: onChanged,
            items: items,
            //icon: SizedBox.shrink(), // Disable the default dropdown icon
          ),
        ]);
  }
}
