import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
    CustomIconButtons(
      icon: Icons.keyboard_arrow_right,
      name: "8Notes",
      iconAlignment: CustomIconAlignMent.right,
    )
  ];

  final Widget svg = SvgPicture.asset(
    'lib/assets/svg/Union.svg',
    semanticsLabel: 'Acme Logo',
    height: 23,
    width: 22,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Open Sans / 13 / Semi Bold
    return Padding(
      padding: EdgeInsets.only(
        bottom: 5.0,
        top: size.height * 0.01,
      ),
      child: SizedBox(
        width: size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svg,
                  Padding(
                    padding: const EdgeInsets.only(left: 6.88),
                    child: Text(
                      "Common Area",
                      style: GoogleFonts.openSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
      ),
    );
  }
}
