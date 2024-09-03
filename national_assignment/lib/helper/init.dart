import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_assignment/DataLayer/qustions_data.dart';

Future<void> setup() async {
  await GetStorage.init();
  GetIt.I.registerSingleton<QuestionData>(QuestionData());
}
