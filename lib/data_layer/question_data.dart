import 'package:get_storage/get_storage.dart';
import 'package:national_day_quiz/models/question.dart';

class QuestionData {
  List<String> questions = [];
  List<Map<String, String>> choices = [];
  List<String> answers = [];
  int score = 0;
  late int questionIndex;

  final box = GetStorage();
  QuestionData() {
    loadState();
    loadQuestions();
  }

  loadQuestions() async {
    List<Map<String, String>> listOfQs = Question.getQuestions();
    for (var q in listOfQs) {
      questions.add(q['question']!);
      choices.addAll([
        {
          'A': q['A']!,
          'B': q['B']!,
          'C': q['C']!,
          'D': q['D']!,
        }
      ]);
      answers.add(q['answer']!);
    }

    await box.write('questions', listOfQs);
  }

  loadState() async {
    if (box.hasData('question index')) {
      questionIndex = await box.read('question index');
    }
    if (questionIndex == 10) {
      questionIndex = 0;
    }
  }

  saveScore(bool isCorrect, int questionIndex) async {
    if (isCorrect) {
      score++;
    }
    await box.write('score', score);
    await box.write('question index', questionIndex);
  }
}
