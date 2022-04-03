import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitest1/components/component_data_view.dart';
import 'package:uitest1/models/custom_data_views_model.dart';

class CardContentItem extends StatelessWidget {
  const CardContentItem({
    Key? key,
    required this.title,
    required this.subtitle,
    this.showIcon = false,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          child: Text(
            title.toUpperCase(),
            style: GoogleFonts.openSans(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
            width: 200,
            child: CustomDataView(
              data: CustomDataViewModel(
                lastIcon: showIcon ? "lib/assets/svg/copy.svg" : null,
                title: subtitle,
              ),
            )),
      ],
    );
  }
}
