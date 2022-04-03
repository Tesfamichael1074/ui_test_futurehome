import 'package:flutter/material.dart';
import 'package:uitest1/models/custom_data_views_model.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

final card2TitleBarContents = [
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/sdco.svg",
    title: "Smoke detector",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/exclamation.svg",
    title: "Offline",
    textStyle: TextStyle(
      color: Color(0xFFF18303),
      fontWeight: FontWeight.w600,
    ),
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/exclamation.svg",
    title: "Tampered",
    textStyle: TextStyle(
      color: Color(0xFFF18303),
      fontWeight: FontWeight.w600,
    ),
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/check.svg",
    title: "Configured",
  ),
];

final card2FooterButtons = [
  CustomIconButtons(name: "Edit"),
  CustomIconButtons(name: "unpair"),
  CustomIconButtons(name: "delete"),
  CustomIconButtons(name: "identify"),
  CustomIconButtons(name: "ping"),
  CustomIconButtons(name: "Sensitivity"),
  CustomIconButtons(name: "Test Siren", outlined: true),
];

final card2FooterButtons2 = [
  CustomIconButtons(name: "Timeline"),
  CustomIconButtons(name: "8Notes"),
];

final card2Content = [
  {"key": "Address", "value": "2_0", "icon": true},
  {"key": "Device ID", "value": "1", "icon": false},
];
