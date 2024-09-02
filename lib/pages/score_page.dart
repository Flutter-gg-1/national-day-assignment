import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_data.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/congrats.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 150,),
                const Text(
                  "Congratulation!",
                  style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${GetIt.I.get<QuestionData>().score} / ${GetIt.I.get<QuestionData>().lstQuestions.length}",
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
