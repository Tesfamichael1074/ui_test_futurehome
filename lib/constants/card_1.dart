import 'package:flutter/material.dart';
import 'package:uitest1/models/custom_data_views_model.dart';
import 'package:uitest1/models/custom_icon_buttons_model.dart';

final card1TitleBarContents = [
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/man.svg",
    lastIcon: "lib/assets/svg/copy.svg",
    title: "Board member",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/call.svg",
    lastIcon: "lib/assets/svg/copy.svg",
    title: "+47 444 44 444",
  ),
  CustomDataViewModel(
    title: "Priority 1",
  ),
  CustomDataViewModel(
    firstIcon: "lib/assets/svg/email.svg",
    lastIcon: "lib/assets/svg/copy.svg",
    title: "mario@castle.com",
  ),
];

final card1FooterButtons = [
  CustomIconButtons(name: "Edit"),
  CustomIconButtons(name: "Delete"),
];

final card1Content = [
  {"key": "Updated AT", "value": "01.01.1970", "icon": false},
];
