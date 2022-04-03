import 'package:flutter/material.dart';
import 'package:uitest1/models/custom_data_views_model.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

final card3TitleBarContents = [
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/wls.svg",
    title: "Water leak detector",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/check.svg",
    title: "Online",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/check.svg",
    title: "Secured",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/check.svg",
    title: "Configured",
  ),
];

final card3FooterButtons = [
  CustomIconButtons(name: "Edit"),
  CustomIconButtons(name: "unpair"),
  CustomIconButtons(name: "identify"),
  CustomIconButtons(name: "ping"),
];

final card3Content = [
  {"key": "Address", "value": "2_0", "icon": true},
  {"key": "Device ID", "value": "1", "icon": false},
];
