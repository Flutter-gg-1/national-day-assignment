import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_assignment/DataLayer/qustions_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.emoji_events_rounded,
          color: Colors.orange.shade400,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Congratulation!",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${GetIt.I.get<QuestionData>().score} / ${GetIt.I.get<QuestionData>().lstQuestions.length}",
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    )));
  }
}
