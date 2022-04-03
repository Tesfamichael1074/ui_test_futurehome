import 'package:flutter/material.dart';

class CustomDataViewModel {
  final String? firstIcon;
  final String? lastIcon;
  final String title;
  final TextStyle? textStyle;

  CustomDataViewModel({
    this.firstIcon,
    this.lastIcon,
    this.textStyle,
    required this.title,
  });
}
