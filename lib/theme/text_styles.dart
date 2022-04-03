import 'package:flutter/material.dart';
import 'package:uitest1/theme/colors.dart';

const TextStyle cardDataTextStyle = TextStyle(
  color: mainOrangeColor,
  fontWeight: FontWeight.w600,
);

ButtonStyle cardButtonstyle = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
  backgroundColor: MaterialStateProperty.all<Color>(mainColor),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
  ),
);

ButtonStyle cardButtonstyleOutlined = ButtonStyle(
  foregroundColor: MaterialStateProperty.all<Color>(mainColor),
  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: const BorderSide(
        color: mainColor,
      ),
    ),
  ),
);
