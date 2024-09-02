import 'package:get_storage/get_storage.dart';
import 'package:national_day/data_handle/models/qust_model.dart';
import 'package:national_day/json/json_data.dart';

class AppModel {
  final box = GetStorage();

  List<QustModel> qustList = [];
  List<String> userAnsList = [];
  int curnetQusPage = 0;

  AppModel() {
    loadData();
  }

  void loadData() {
    if (box.hasData("userAnsList")) {
      userAnsList = List.from(box.read("userAnsList")).cast<String>();
    }

    if (box.hasData("curnetQusPage")) {
      curnetQusPage = box.read("curnetQusPage");
    }

    for (var val in dataQ) {
      qustList.add(QustModel.fromJson(val));
    }
  }

  void saveData() async {
    await box.write("userAnsList", userAnsList);
    await box.write("curnetQusPage", curnetQusPage);
  }

  bool checkAns({required String ans, bool? old}) {
    if (old == null) {
      userAnsList.add(ans);
       saveData();
    }


    if (ans == qustList[curnetQusPage].answer) {
      
      return true;
      
    }

    return false;

    
  }

  int totalAns() {
    int ans = 0;

    for (int i = 0; i < qustList.length; i++) {
      if (qustList[i].answer == userAnsList[i]) {
        ans += 1;
      }
    }

    return ans;
  }
}
