import 'package:flutter/material.dart';
import 'package:uitest1/components/card.dart';
import 'package:uitest1/components/container_appbar.dart';
import 'package:uitest1/constants/card_1.dart';

class MainCard extends StatefulWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.aspectRatio * 70,
        horizontal: size.width * 0.1,
      ),
      padding: EdgeInsets.all(size.aspectRatio * 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          ContainerAppBar(),

          // component card
          CustomCard(
            size: size,
            footerButtons: card1FooterButtons,
            titleBarContents: card1TitleBarContents,
          ),
          // CustomCard(
          //   size: size,
          // ),
          // CustomCard(
          //   size: size,
          // ),
        ],
      ),
    );
  }
}
