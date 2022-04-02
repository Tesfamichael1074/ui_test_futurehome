import 'package:flutter/material.dart';

class CustomIconButtons {
  CustomIconButtons({
    required this.icon,
    required this.name,
    this.iconAlignment = CustomIconAlignMent.left,
  });

  final String name;
  final IconData icon;
  final CustomIconAlignMent iconAlignment;
}

enum CustomIconAlignMent { left, right }
