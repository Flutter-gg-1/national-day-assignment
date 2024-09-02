



import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_day/data_handle/gitt.dart';
import 'package:national_day/data_handle/models/app_model.dart';
import 'package:national_day/page/home_page.dart';
import 'package:national_day/page/qust_page.dart';

void main() async{

  AppModel();

WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  setup();



  runApp(const MainApp());

}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner:  false,


      home: HomePage(),
    );
  }
}