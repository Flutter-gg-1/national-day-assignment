import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import '../data_layer/questions_data.dart';
import '../data_layer/user_data.dart';
final GetIt getIt = GetIt.instance;
void setup() {
 // Initialize GetStorage
 GetStorage.init();
 // Register services
 getIt.registerLazySingleton(() => QuestionsData());
 getIt.registerLazySingleton(() => UserData());
}
