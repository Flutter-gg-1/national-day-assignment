import 'package:get_it/get_it.dart';
import 'package:national_day/data_handle/models/app_model.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AppModel>(AppModel());

// Alternatively you could write it if you don't like global variables

}