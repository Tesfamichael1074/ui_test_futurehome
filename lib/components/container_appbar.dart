import 'package:flutter/material.dart';
import 'package:uitest1/components/button_groups.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

class ContainerAppBar extends StatefulWidget {
  @override
  State<ContainerAppBar> createState() => _ContainerAppBarState();
}

class _ContainerAppBarState extends State<ContainerAppBar> {
  final tempButtons = [
    CustomIconButtons(icon: Icons.add, name: "Contact"),
    CustomIconButtons(icon: Icons.add, name: "Room"),
    CustomIconButtons(icon: Icons.add, name: "Device"),
    CustomIconButtons(icon: Icons.add, name: "8 Notes"),
    CustomIconButtons(icon: Icons.add, name: "8 Notes"),
    CustomIconButtons(icon: Icons.add, name: "8 Notes"),
    CustomIconButtons(icon: Icons.add, name: "8 Notes"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Wrap(
        children: [
          Container(
            width: size.width * 0.4,
            child: Row(
              children: [
                const Icon(Icons.chair_alt),
                const Text(
                  "Common Area",
                ),
              ],
            ),
          ),
          // const Spacer(),
          CustomButtonGroup(
            buttons: tempButtons,
          ),
        ],
      ),
    );
  }
}
