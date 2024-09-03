// import 'package:get_storage/get_storage.dart';
// import 'package:national_assignment/DataLayer/data_set.dart';
// import 'package:national_assignment/Models/qustions_model.dart';

// class QuestionData {
//   final box = GetStorage();
//   int index = 0;
//   List<QuestionsModel> dataQuestion = [];
//    int score = 0; // Track the user's score

//    QuestionData() {
//     dataQuestion = dataQ.map((e) => QuestionsModel.fromJson(e)).toList();
//     loadData();
//   }

//   // // Method to save the score (if you need to persist it)
//   // void saveScore() {
//   //   box.write('score', score); // Save the score in persistent storage
//   // }

//   // saveDataLoad() {
//   //   List<Map<String, dynamic>>? dataQuestionAsJson = [];
//   //   for (var element in dataQuestion!) {
//   //     dataQuestionAsJson.add(element.toJson());
//   //   }
//   //   box.write("dataQ", dataQuestionAsJson);
//   // }


//     saveQuestions() async {
//     List<Map<String, dynamic>> questionsAsMap = [];
//     for (var element in dataQuestion) {
//       questionsAsMap.add(element.toJson());
//     }
//     await box.write("tasks", questionsAsMap);
//   }

//   saveScore() async {
//     await box.write("score", score);
//   }

//   saveIndex() async {
//     await box.write("index", index);
//   }


//   loadData() {
//     if (!box.hasData("dataQ")) {
//       for (var element in dataQ) {
//         dataQuestion?.add(QuestionsModel.fromJson(element));
//       }
//     } else {
//       for (var element in List.from(box.read("dataQ")).cast<dynamic>()) {
//         dataQuestion?.add(QuestionsModel.fromJson(element));
//       }
//     }
//   }

//   // void CheckAnswer(String selectedAnswer, int index) {
//   //   final currentQuestion = dataQuestion![index];

//   //   if (selectedAnswer == currentQuestion.answer) {
//   //     print("correct");
//   //   } else {
//   //     print("wrong");
//   //   }
//   // }
// }


import 'package:get_storage/get_storage.dart';
import 'package:national_assignment/DataLayer/data_set.dart';
import 'package:national_assignment/Models/qustions_model.dart';

class QuestionData {
  List<QuestionsModel> lstQuestions = [];
  int score = 0;
  int index = 0;
  final box = GetStorage();
  QuestionData() {
    lstQuestions = dataQ.map((e) => QuestionsModel.fromJson(e)).toList();
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
        lstQuestions.add(QuestionsModel.fromJson(element));
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