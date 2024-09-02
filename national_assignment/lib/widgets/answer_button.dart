
import 'package:flutter/material.dart';
import 'package:national_assignment/Colors/app_color.dart';

class answersButton extends StatelessWidget {
  const answersButton({super.key, required this.choise, required this.answer});

  final String answer;
  final String choise;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(
          color: AppColor().answerColor,
          width: 2.0,
        )),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text(
                answer,
                style: TextStyle(fontSize: 20),
              ),
              Spacer(),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColor().answerColor, width: 2)),
                child: Center(
                  child: Text(
                    choise,
                    style: TextStyle(color: AppColor().answerColor),
                  ),
                ),
              )
            ])));
  }
}
