import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import '../model/question.dart';
import '../model/selected_answer.dart';

class DataMgr {
  final box = GetStorage();
  String currentQuestion = '';
  List<Question> allQuestions = [];
  List<SelectedAnswer> allAnswers = [];

  DataMgr() {
    _fetchQuestions();
    _fetchAnswers();
  }

  // Questions

  Future<void> _fetchQuestions() async {
    if (box.read('questions') == null) {
      allQuestions = await _loadQuestionsFromBundle();
    } else {
      allQuestions = await _loadQuestionsFromStorage();
    }
  }

  Future<List<Question>> _loadQuestionsFromStorage() async {
    String data = box.read('questions');
    var jsonResult = json.decode(data);

    List<Question> questions = (jsonResult != null)
        ? List<Question>.from(
            jsonResult.map((questionJson) => Question.fromJson(questionJson)))
        : [];
    return questions;
  }

  Future<List<Question>> _loadQuestionsFromBundle() async {
    String data = await rootBundle.loadString('assets/questions.json');
    var jsonResult = json.decode(data);

    List<Question> questions = (jsonResult != null)
        ? List<Question>.from(
            jsonResult.map((questionJson) => Question.fromJson(questionJson)))
        : [];

    String questionsData =
        json.encode(questions.map((answer) => answer.toJson()).toList());
    await box.write('questions', questionsData);

    return questions;
  }

  // MARK: - Answers

  Future<void> _fetchAnswers() async {
    if (box.read('answers') == null) {
      allAnswers = [];
    } else {
      allAnswers = await _loadAnswersFromStorage();
    }
  }

  Future<List<SelectedAnswer>> _loadAnswersFromStorage() async {
    String data = box.read('answers');
    var jsonResult = json.decode(data);

    List<SelectedAnswer> answers = (jsonResult != null)
        ? List<SelectedAnswer>.from(
            jsonResult.map((answerJson) => SelectedAnswer.fromJson(answerJson)))
        : [];
    return answers;
  }

  Future<void> setAnswer(SelectedAnswer answer) async {
    allAnswers.add(answer);
    String data =
        json.encode(allAnswers.map((answer) => answer.toJson()).toList());
    await box.write('answers', data);
  }

  Future<void> resetAnswers() async {
    allAnswers = [];
    await box.remove('answers');
  }
}
