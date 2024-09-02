import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import '../data_layer/qs_data_layer.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  await GetStorage.init();
  getIt.registerSingleton<QsDataLayer>(QsDataLayer());
}
