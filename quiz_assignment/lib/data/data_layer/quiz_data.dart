import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_assignment/data/data_set/data_set.dart';
import 'package:quiz_assignment/models/quiz_model.dart';

class QuizData {
  final box = GetStorage();
  List<QuizModel> quizQ = [];
  List correctAnswers = [];

  addData() {
    if (!box.hasData("dataQ")) {
      for (var element in dataQ) {
        quizQ.add(QuizModel.fromJson(element));
      }
    } else {
      for (var element in List.from(box.read("dataQ")).cast<dynamic>()) {
        quizQ.add(QuizModel.fromJson(element));
      }
    }
  }

  loadLevel() {
    int level = 0;
    if (box.hasData("count")) {
      level = box.read("count");
    }
    return level;
  }

  saveLevel({required int count}) {
    box.write("count", count);
  }

  saveCorrectAnswers() {
    box.write("correctAnswers", correctAnswers);
  }

  checkAnswer({required String select, required int index}) {
    Color value;
    if (select == quizQ[index].answer) {
      correctAnswers.add(quizQ[index].answer);
      value = const Color(0xff1C8D21);
      saveCorrectAnswers();
      return value;
    } else {
      value = const Color(0xffD9000D);
      return value;
    }
  }

  getScore() {
    int score = 0;
    if (box.hasData("correctAnswers")) {
      score = box.read("correctAnswers").length;
    }

    return score;
  }
}
