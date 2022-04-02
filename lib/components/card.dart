import 'package:flutter/material.dart';
import 'package:uitest1/components/button_groups.dart';
import 'package:uitest1/components/card_content.dart';
import 'package:uitest1/components/component_data_view.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

class CustomCard extends StatelessWidget {
  final size;
  CustomCard({Key? key, this.size}) : super(key: key);

  final tempButtons = [
    CustomIconButtons(icon: Icons.add, name: "Contact"),
    CustomIconButtons(icon: Icons.add, name: "Room"),
    CustomIconButtons(icon: Icons.add, name: "Device"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First content of the card
          Container(
            width: double.maxFinite,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: const [
                CustomDataView(),
                CustomDataView(),
                CustomDataView(),
              ],
            ),
          ),

          // Middle content
          CardContents(),

          // Buttons in the card
          CustomButtonGroup(buttons: tempButtons),
        ],
      ),
    );
  }
}
