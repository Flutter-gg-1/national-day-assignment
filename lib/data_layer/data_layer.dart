import 'package:national_day/main.dart';
import 'package:national_day/model/question_model.dart';
import 'package:national_day/model/user.dart';

class Datalayer {
  List<QuestionModel> questions = [];
  User user = User(progress: 0, score: 0);

  void getUser() {
    if (!objectbox.userBox.isEmpty()) user = objectbox.userBox.getAll()[0];
  }

  void getQueastion() {
    if (!objectbox.qBox.isEmpty()) questions = objectbox.qBox.getAll();
  }

  void savedProgress() {
    objectbox.userBox.removeAll();
    objectbox.userBox.put(user);
  }
}
