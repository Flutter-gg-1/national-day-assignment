import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_day_quiz/data_layer/question_data.dart';

final locator = GetIt.instance;
setup() async {
  await GetStorage.init();
  locator.registerSingleton<QuestionData>(QuestionData());
}
