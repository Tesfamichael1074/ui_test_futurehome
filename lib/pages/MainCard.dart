import 'package:flutter/material.dart';
import 'package:uitest1/components/card.dart';
import 'package:uitest1/components/container_appbar.dart';
import 'package:uitest1/constants/card_1.dart';
import 'package:uitest1/constants/card_2.dart';
import 'package:uitest1/constants/card_3.dart';

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
        horizontal: size.width * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.aspectRatio * 5),
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
                  cardContent: card1Content,
                ),
                CustomCard(
                  size: size,
                  footerButtons: card2FooterButtons,
                  titleBarContents: card2TitleBarContents,
                  cardContent: card2Content,
                  footerButtons2: card2FooterButtons2,
                ),
                CustomCard(
                  size: size,
                  footerButtons: card3FooterButtons,
                  titleBarContents: card3TitleBarContents,
                  cardContent: card3Content,
                  footerButtons2: card3FooterButtons2,
                ),
                // CustomCard(
                //   size: size,
                // ),
                // CustomCard(
                //   size: size,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
