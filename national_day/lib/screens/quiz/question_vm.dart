import 'dart:convert';
import 'package:flutter/services.dart';
import '../../model/question.dart';

class QuestionVM {
  List<Question> questions = [];
  late int currentQuestion;
  late int totalQuestions;
  int score = 0;

  Future<List<Question>> loadQuestions() async {
    String data = await rootBundle.loadString('assets/questions.json');
    var jsonResult = json.decode(data);

    List<Question> questions = jsonResult != null
        ? List<Question>.from(
            jsonResult.map((questionJson) => Question.fromJson(questionJson)))
        : [];

    currentQuestion = 1;
    totalQuestions = questions.length;
    print(questions.length);

    return questions;
  }
}
