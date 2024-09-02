import 'package:get_storage/get_storage.dart';
import 'package:national_day/model/json_data.dart';

import '../model/data_model.dart';

class QuestionData {
  List<DataModel> data = [];
  final box = GetStorage();

  loadData(){
    if(!box.hasData("data")){
      for (var element in dataQ) {
        data.add(DataModel.fromJson(element));
      }
    }else{
      for (var element in List.from(box.read("data")).cast<dynamic>()) {
        data.add(DataModel.fromJson(element));
      }
    }
  }
}