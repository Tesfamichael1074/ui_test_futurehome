import 'package:flutter/material.dart';

class CardContentItem extends StatelessWidget {
  const CardContentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          child: const Text("Updated at"),
        ),
        Container(
          width: 200,
          child: Row(
            children: const [
              Text("01.01.1970"),
              Icon(
                Icons.dashboard_customize_outlined,
                size: 15,
                color: Color(0xFF85949A),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
