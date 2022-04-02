import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF2D3436)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(
                color: Color(0xFF2D3436),
              ),
            ),
          ),
        ),
        icon: const Icon(
          Icons.abc_rounded,
          size: 15,
        ),
        label: Text(
          "data".toUpperCase(),
        ),
      ),
    );
  }
}
