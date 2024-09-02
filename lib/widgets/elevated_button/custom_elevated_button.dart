import 'package:flutter/material.dart';

import '../custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.backgroundColors, required this.text, required this.fontSize, this.fontWeight, this.textcolor, this.onPressed, required this.height, required this.width});
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: backgroundColors),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              child: CustomText(text: text, fontSize: fontSize, fontWeight: fontWeight, color:  textcolor)),
            ),
          );
    // Container(
    //           height: height,
    //           width: width,
    //           decoration: BoxDecoration(gradient: const LinearGradient(colors: [Colors.white, Color(0xff1C8D21)], begin: Alignment.centerLeft), borderRadius: BorderRadius.circular(15)),
    //           child: ElevatedButton(
    //               style: ElevatedButton.styleFrom(backgroundColor: backgroundColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    //               onPressed: onPressed, child: CustomText(text: text, fontSize: fontSize, fontWeight: fontWeight, color:  textcolor)),
    // );
  }
}