import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.button}) {
    title = Text(
      button.name.toUpperCase(),
      style: GoogleFonts.openSans(
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  final ButtonStyle style = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF2D3436)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Color(0xFF2D3436),
        ),
      ),
    ),
  );

  late Widget title;
  final CustomIconButtons button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Directionality(
        textDirection: button.iconAlignment == CustomIconAlignMent.right
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: button.icon != null
            ? ElevatedButton.icon(
                onPressed: () {},
                style: style,
                icon: Icon(
                  button.icon,
                  size: 15,
                ),
                label: title,
              )
            : ElevatedButton(
                onPressed: () {},
                child: title,
                style: style,
              ),
      ),
    );
  }
}
