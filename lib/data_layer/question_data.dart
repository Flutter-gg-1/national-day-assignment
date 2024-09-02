import 'dart:developer';

import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/data_set/data_set.dart';
import 'package:quiz_app/models/question.dart';

class QuestionData {
  List<Question> lstQuestions = [];
  int trueAnswers = 0;
  final box = GetStorage();
  QuestionData() {
    loadData();
  }
  
  loadData() {
    lstQuestions = dataQ.map((e) => Question.fromJson(e)).toList();
  }
}
