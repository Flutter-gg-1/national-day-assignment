import 'package:ass/wedget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.backgroundColors,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.textcolor,
      this.onPressed,
      required this.height,
      required this.width});
  final List<Color> backgroundColors;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? textcolor;
  final Function()? onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: backgroundColors),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
            width: width,
            height: height,
            alignment: Alignment.center,
            child: CustomText(
                text: text,
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: textcolor)),
      ),
    );
  }
}
