import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.textColor});

  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: textColor ?? Colors.blue,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
