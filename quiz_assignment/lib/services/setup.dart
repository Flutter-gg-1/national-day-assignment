import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_assignment/data/data_layer/quiz_data.dart';

Future<void> setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<QuizData>(QuizData());
}
