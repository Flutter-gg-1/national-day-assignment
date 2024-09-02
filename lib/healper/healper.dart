import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nationalday/datalayer/question_data.dart';
import 'package:nationalday/datalayer/user_data.dart';

Future<void> setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<QuestionData>(QuestionData());
  GetIt.I.registerSingleton<UserData>(UserData());
}
