import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitest1/components/button_groups.dart';
import 'package:uitest1/components/card_content.dart';
import 'package:uitest1/components/component_data_view.dart';
import 'package:uitest1/models/custom_data_views_model.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

class CustomCard extends StatelessWidget {
  final size;
  CustomCard({
    Key? key,
    this.size,
    required this.titleBarContents,
    required this.footerButtons,
    required this.cardContent,
  }) : super(key: key);

  final List<Map<String, dynamic>> cardContent;
  final List<CustomDataViewModel> titleBarContents;
  final List<CustomIconButtons> footerButtons;

  final Widget svg = SvgPicture.asset(
    'lib/assets/svg/man.svg',
    semanticsLabel: 'Acme Logo',
    height: 15,
    width: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.009,
      ),
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.001,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF03A9F1),
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
              children: [
                ...titleBarContents.map((e) {
                  return CustomDataView(
                    data: e,
                  );
                }).toList(),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.keyboard_arrow_up_sharp),
                ),
              ],
            ),
          ),

          // Middle content
          CardContents(
            content: cardContent,
          ),

          // Buttons in the card
          CustomButtonGroup(buttons: footerButtons),
        ],
      ),
    );
  }
}
