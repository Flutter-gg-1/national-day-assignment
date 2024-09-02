import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nationalday/dataModel/dataSet.dart';
import 'package:nationalday/dataModel/data_model.dart';
import 'package:nationalday/dataModel/user_model.dart';
import 'package:nationalday/datalayer/user_data.dart';

class QuestionData {
  final box = GetStorage(); 
  List<DataModel>? dataQuestion = [];


  void loadData() {
    if (!box.hasData("dataQ")) {
      
      for (var element in dataQ) {
        dataQuestion?.add(DataModel.fromJson(element));
      }
    } else {
    
      for (var element
          in List.from(box.read("dataQ")).cast<Map<String, dynamic>>()) {
        dataQuestion?.add(DataModel.fromJson(element));
      }
    }
    loadUser(); 
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
      GetIt.I.get<UserData>().myUser.rightQuestions?.add(dataQou);
      saveUserData(); 
    }
  }


  void saveAnswer() {
    GetIt.I.get<UserData>().myUser.rightQuestions?.add(dataQuestion![0]);
    saveUserData();
  }

  
  void loadUser() {
    if (box.hasData('user')) {
      final userData = UserModel.fromJson(box.read("user"));
      GetIt.I.get<UserData>().myUser = userData;
    }
  }


  void saveUserData() {
    box.write("user", GetIt.I.get<UserData>().myUser.toJson());
  }
}
