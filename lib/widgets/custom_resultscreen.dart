import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';
import 'package:national_day_assignment/data/question_data.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';

class CustomResult extends StatelessWidget {
  const CustomResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: context.getWidth(),
            height: context.getHeight() / 2.8,
            child: Lottie.asset('assets/Animation - 1725317151634.json',
                fit: BoxFit.fill)),
        Image.asset(
          'assets/star.png',
          width: context.getWidth() / 3.5,
        ),
        const Text(
          'Congratulation!',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text('your result is ${GetIt.I.get<QuestionData>().totoalAnswoerd}/10',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    );
  }
}