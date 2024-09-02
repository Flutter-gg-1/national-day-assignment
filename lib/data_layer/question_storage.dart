import 'package:get_storage/get_storage.dart';

class QuestionStorage {
  final box = GetStorage();

  void saveAnswerLevel(int level) {
    box.write('level', level);
  }
  void saveScore(int score) {
    box.write('score', score);
  }

  int getAnswerLevel() {
    return box.read('level') ?? 0;
  }
  int getScore() {
    return box.read('score') ?? 0;
  }
}
