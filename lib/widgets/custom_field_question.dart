import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';

class CustomFieldQuestion extends StatelessWidget {
  const CustomFieldQuestion({
    super.key,
    required this.colorAnswerd,
    required this.question,
    required this.questionNumber,
    required this.index,
  });

  final Color colorAnswerd;
  final String question;
  final String questionNumber;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() / 15,
      width: context.getWidth() / 1.3,
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
                color: colorAnswerd,
                width: 1,
              ),
              top: BorderSide(
                color: colorAnswerd,
                width: 1,
              ),
              right: BorderSide(
                color: colorAnswerd,
                width: 4,
              ),
              bottom: BorderSide(
                color: colorAnswerd,
                width: 4,
              )),
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(8.16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              question,
              style:
                  const TextStyle(fontSize: 13.46, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              width: context.getWidth() / 24,
              height: context.getHeight() / 37,
              decoration: BoxDecoration(
                  border: Border.all(color: colorAnswerd),
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  questionNumber,
                  style: TextStyle(color: colorAnswerd),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
