import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_data.dart';
import 'package:quiz_app/models/question.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("${GetIt.I.get<QuestionData>().trueAnswers} / ${GetIt.I.get<QuestionData>().lstQuestions.length}")],
        ),
      ),
    );
  }
}
