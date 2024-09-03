import 'package:get_storage/get_storage.dart';
import 'package:national_day/data_set/dataq.dart';
import 'package:national_day/models/data_model.dart';

class QuestionData {
  final GetStorage box = GetStorage();
  List<DataModel>? dataQuestion = [];
  List<DataModel> userAnswers = [];

  void loadData() {
    if (!box.hasData("dataQ")) {
      for (var element in dataQ) {
        dataQuestion?.add(DataModel.fromJson(element));
      }
    } else {
      for (var element in List.from(box.read("dataQ")).cast<dynamic>()) {
        dataQuestion?.add(DataModel.fromJson(element));
      }
    }
  }

  void saveDataLoad() {
    List<Map<String, dynamic>>? dataQuestionAsJson = [];
    for (var element in dataQuestion!) {
      dataQuestionAsJson.add(element.toJson());
    }
    box.write("dataQ", dataQuestionAsJson);
  }

  void checkAnswer({required String select, required int index}) {
    final dataQou = dataQuestion![index];

    if (select == dataQou.answer) {
      userAnswers.add(dataQou);
    }
  }

  void saveAnswers() {
    List<Map<String, dynamic>> userAnswersAsJson = [];
    for (var element in userAnswers) {
      userAnswersAsJson.add(element.toJson());
    }
    box.write("userAnswers", userAnswersAsJson);
  }

  void loadUserAnswers() {
    if (box.hasData('userAnswers')) {
      final savedAnswers = List.from(box.read("userAnswers")).cast<dynamic>();
      userAnswers = savedAnswers.map((e) => DataModel.fromJson(e)).toList();
    }
  }
  int calculateScore() {
    int score = 0;
    for (var i = 0; i < dataQuestion!.length; i++) {
      final question = dataQuestion![i];
      if (userAnswers.contains(question)) {
        score++;
      }
    }
    return score;
  }
}
