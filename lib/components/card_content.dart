import 'package:flutter/material.dart';
import 'package:uitest1/components/card_content_item.dart';

class CardContents extends StatelessWidget {
  const CardContents({Key? key, required this.content}) : super(key: key);
  final List<Map<String, dynamic>> content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Column(
            children: content
                .map((e) => CardContentItem(
                      title: e["key"],
                      subtitle: e["value"],
                      showIcon: e["icon"],
                    ))
                .toList(),
          )),
    );
  }
}
