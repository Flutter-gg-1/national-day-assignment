import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/data_layer/question_data.dart';
import 'package:quiz_app/model/question_model.dart';

class QuestionStorage {
  final box = GetStorage();
  final List<QuestionModel> questions = displayQuestions(dataQ);
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
