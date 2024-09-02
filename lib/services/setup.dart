import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/data_layer/question_data.dart';


setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<QuestionData>(QuestionData());
}