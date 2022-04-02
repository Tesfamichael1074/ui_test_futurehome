import 'package:flutter/material.dart';
import 'package:uitest1/components/card_content_item.dart';

class CardContents extends StatelessWidget {
  const CardContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // width:
          child: Column(
        children: const [
          CardContentItem(),
        ],
      )),
    );
  }
}
