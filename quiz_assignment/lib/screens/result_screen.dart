import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_assignment/data/data_layer/quiz_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int score = GetIt.I.get<QuizData>().getScore();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/green-confetti.avif",
            width: double.infinity,
          ),
          Image.asset(
            "assets/winner.png",
          ),
          const Text("Congratulation!",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          Text("Your result is: $score / 10",
              style:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            width: 700,
            child: Image.asset(
              "assets/effect.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
