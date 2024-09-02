import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/data_layer/data_set.dart';
import 'package:quiz_app/models/question.dart';

class QuestionData {
  List<Question> lstQuestions = [];
  int score = 0;
  int index = 0;
  final box = GetStorage();
  QuestionData() {
    lstQuestions = dataQ.map((e) => Question.fromJson(e)).toList();
    loadData();
  }

  saveQuestions() async {
    List<Map<String, dynamic>> questionsAsMap = [];
    for (var element in lstQuestions) {
      questionsAsMap.add(element.toJson());
    }
    await box.write("tasks", questionsAsMap);
  }

  saveScore() async {
    await box.write("score", score);
  }

  saveIndex() async {
    await box.write("index", index);
  }

  loadData() {
    if (box.hasData('questions')) {
      List<Map<String, dynamic>> savedQ =
          List.from(box.read('questions')).cast<Map<String, dynamic>>();
      for (var element in savedQ) {
        lstQuestions.add(Question.fromJson(element));
      }
    }
    if (box.hasData('score')) {
      score = box.read('score');
    }
    if (box.hasData('index')) {
      index = box.read('index');
    }
  }
}
