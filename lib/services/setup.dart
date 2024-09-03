import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_day_assignment/data/question_data.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await GetStorage.init();
// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<QuestionData>(QuestionData());
}
