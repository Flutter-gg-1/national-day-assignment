import 'package:get_storage/get_storage.dart';
import 'package:national_day_assignment/data/data_set.dart';
import 'package:national_day_assignment/model/question_model.dart';

class QuestionData {
  List<QuestionModel> questionDataList = [];
  int index = 0;
  int totoalAnswoerd = 0;
  bool isAnsowered = true;
  final box = GetStorage();

  QuestionData() {
    questionDataList = dataQuest.map((e) => QuestionModel.fromJson(e)).toList();
    loadData();
  }

  //Load data from GetStorage
  void loadData() {
    if (box.hasData('questions')) {
      List<Map<String, dynamic>> savedQ =
          List.from(box.read('questions')).cast<Map<String, dynamic>>();
      questionDataList = savedQ.map((e) => QuestionModel.fromJson(e)).toList();
    }
    if (box.hasData('result')) {
      totoalAnswoerd = box.read('result');
    }
    if (box.hasData('restorequestion')) {
      index = box.read('restorequestion');
    }
  }

  //Save result to GetStorage
  saveResult() {
    box.write("result", totoalAnswoerd);
  }

  //Save questions to GetStorage
  saveQuestions() {
    List<Map<String, dynamic>> questionsMap =
        questionDataList.map((e) => e.toJson()).toList();
    box.write("questions", questionsMap);
  }

  //Save current index to GetStorage
  saveIndex() {
    box.write("restorequestion", index);
  }

  //method to save all data
  Future<void> saveAll() async {
    await saveResult();
    await saveQuestions();
    await saveIndex();
  }
}
