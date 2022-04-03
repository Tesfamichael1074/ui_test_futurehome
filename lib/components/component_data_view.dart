import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitest1/models/custom_data_views_model.dart';

class CustomDataView extends StatelessWidget {
  CustomDataView({Key? key, required this.data}) : super(key: key);
  final CustomDataViewModel data;
  Widget? firstIcon;
  Widget? lastIcon;

  @override
  Widget build(BuildContext context) {
    if (data.firstIcon != null) {
      firstIcon = SvgPicture.asset(
        data.firstIcon!,
        semanticsLabel: 'Acme Logo',
        height: 15,
        width: 15,
      );
    }

    if (data.lastIcon != null) {
      lastIcon = SvgPicture.asset(
        data.lastIcon!,
        semanticsLabel: 'Acme Logo',
        height: 15,
        width: 15,
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 300,
        child: Row(
          children: [
            if (firstIcon != null) firstIcon!,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(data.title),
            ),
            if (data.lastIcon != null) lastIcon!,
          ],
        ),
      ),
    );
  }
}
