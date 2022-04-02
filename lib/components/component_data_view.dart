import 'package:flutter/material.dart';

class CustomDataView extends StatelessWidget {
  const CustomDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 300,
        child: Row(
          children: const [
            Icon(Icons.account_balance, size: 17),
            Text("Board member"),
            Icon(
              Icons.account_balance,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
