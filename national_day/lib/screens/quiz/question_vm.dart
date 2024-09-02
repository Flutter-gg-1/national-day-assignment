import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_day/model/selected_answer.dart';
import '../../managers/data_mgr.dart';
import '../../model/question.dart';
import '../result/result_screen.dart';

class QuestionVM {
  var dataMgr = GetIt.I.get<DataMgr>();
  late TabController tabController;

  List<Question> get allQuestions => dataMgr.allQuestions;
  List<SelectedAnswer> get answers => dataMgr.allAnswers;

  Question get currentQuestion => allQuestions[tabController.index];
  late int totalQuestions;
  String selectedAnswer = '';

  void buttonClicked(BuildContext context) {
    selectedAnswer = '';
    if (tabController.index < allQuestions.length - 1) {
      tabController.index += 1;
    } else {
      navigate(context);
    }
    buttonText();
  }

  void indexChanged() {
    selectedAnswer = '';
    buttonText();
  }

  String buttonText() {
    return (tabController.index < allQuestions.length - 1)
        ? 'Continue'
        : 'Submit';
  }

  void setSelectedAnswer(String answerKey) {
    var answer = (answers
            .where((answer) => answer.question == currentQuestion.question)
            .toList()
            .firstOrNull)
        ?.question;

    if (answer == null) {
      selectedAnswer = answerKey;
      dataMgr.setAnswer(SelectedAnswer(
          question: currentQuestion.question, answer: answerKey));
    }
    print(answers.length);
  }

  bool highlightCell(String cellKey) {
    for (var answer in answers) {
      if (answer.question.contains(currentQuestion.question) &&
          cellKey == answer.answer) {
        return true;
      }
    }
    return false;
  }

  Color tabColor() {
    for (var answer in answers) {
      if (answer.question.contains(currentQuestion.question)) {
        return answer.answer == currentQuestion.answer
            ? Colors.green
            : Colors.red;
      }
    }
    return Colors.black;
  }

  int score() {
    var count = 0;
    for (var answer in answers) {
      var question =
          allQuestions.firstWhere((q) => q.question == answer.question);
      if (answer.answer == question.answer) {
        count += 1;
      }
    }
    return count;
  }

  void navigate(BuildContext context) {
    var s = score();
    var t = allQuestions.length;

    dataMgr.resetAnswers();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          score: s,
          total: t,
        ),
      ),
    );
  }
}
