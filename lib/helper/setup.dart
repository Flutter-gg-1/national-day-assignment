import 'package:get_it/get_it.dart';
import 'package:national_day/data_layer/data_layer.dart';


Future<void> setup() async {
  GetIt.I.registerSingleton<Datalayer>(Datalayer());

}
