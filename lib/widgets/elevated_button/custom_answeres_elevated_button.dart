import 'package:flutter/material.dart';
import '../custom_text.dart';

class CustomAnsweresElevatedButton extends StatelessWidget {
  const CustomAnsweresElevatedButton(
      {super.key, required this.answerText, required this.number, this.onPressed, required this.color});
  final String answerText;
  final String number;
  final Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 40,
      width: 330,
      decoration: BoxDecoration(border: Border.all(color: color,), borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(blurRadius: 0, spreadRadius: 0, blurStyle: BlurStyle.outer, color: color, offset: Offset(0, 2))
      ]),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              shadowColor: Colors.transparent,
              ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: answerText,
                fontSize: 12,
                color: Colors.black,
              ),
              Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                      border:
                          Border.all(width: 1, color: const Color(0xffC9FBB1))),
                  child: Center(
                    child: CustomText(
                      text: number,
                      fontSize: 8,
                      color: const Color(0xffAAE6A9),
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          )),
    );
  }
}
