import 'package:get_it/get_it.dart';
import 'package:quiz_assignment/data/data_layer/quiz_data.dart';

void setup() {
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<QuizData>(QuizData());
}
