import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key, required this.text, this.textColor, this.buttonBGColor});
  final String text;
  final Color? textColor;
  final Color? buttonBGColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: context.getScreenWidth(multiply: 0.4),
        height: context.getScreenWidth(multiply: 0.15),
        color: buttonBGColor ?? const Color(0xff1C8D21),
        onPressed: () {},
        child: Text(text, style: TextStyle(color: textColor ?? Colors.white)));
  }
}
