import 'package:get_storage/get_storage.dart';
import 'package:national_day/data_handle/models/qust_model.dart';
import 'package:national_day/json/json_data.dart';

class AppModel {
  final box = GetStorage();

  List<QustModel> qustList = [];
  List<String> userAns = [];
  int curnetQusPage = 0;
  int totalAns = 0;

  AppModel() {
    if (!box.hasData("dataQ")) {
      for (var val in dataQ) {
        qustList.add(QustModel.fromJson(val));
      }
    }
  }

  bool checkAns(String ans) {

    
    if (ans  == qustList[curnetQusPage].answer) {

      return true;


    }

    return false;
  }
}
