import 'package:flutter/material.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

import 'buttons/icon_buttons.dart';

class CustomButtonGroup extends StatelessWidget {
  const CustomButtonGroup({Key? key, required this.buttons}) : super(key: key);
  final List<CustomIconButtons> buttons;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: buttons.map((e) {
        return CustomButton(
          button: e,
        );
      }).toList(),
    );
  }
}
