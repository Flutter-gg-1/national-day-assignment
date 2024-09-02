import 'package:get_storage/get_storage.dart';

class QuestionStorage {
  final box = GetStorage();

  void saveAnswerLevel(int level) {
    box.write('level', level);
  }

  int getAnswerLevel() {
    return box.read('level') ?? 0;
  }
}
