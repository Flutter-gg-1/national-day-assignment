import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';



Future<void> setup() async{
  await GetStorage.init();
  
}