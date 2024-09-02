import 'package:get_storage/get_storage.dart';
import 'package:nationalday/dataModel/user_model.dart';

class UserData {
  final box = GetStorage();
  UserModel myUser = UserModel(id: 100, name: "Fahad", score: 0);

  UserData() {
    loadUserData(); 
  }

  
  void loadUserData() {
    if (box.hasData('userData')) {
      final userData = box.read<Map<String, dynamic>>('userData');
      myUser = UserModel.fromJson(userData!);
    }
  }

 
  void saveUserData() {
    box.write('userData', myUser.toJson());
  }


  void updateScore(int score) {
    myUser.score = score;
    saveUserData();
  }
}
