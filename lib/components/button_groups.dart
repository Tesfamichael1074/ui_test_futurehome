import 'package:flutter/material.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

import 'buttons/icon_buttons.dart';

class CustomButtonGroup extends StatelessWidget {
  const CustomButtonGroup({Key? key, required this.buttons}) : super(key: key);
  final List<CustomIconButtons> buttons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: buttons.map((e) {
          return CustomButton();
        }).toList(),
      ),
    );
  }
}
