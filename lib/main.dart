import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:saudi_assignment/data/questions.dart';
import 'package:saudi_assignment/screens/home_screen.dart';
import 'package:saudi_assignment/screens/question_screen.dart';
import 'package:saudi_assignment/services/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetIt.I.get<Questions>().index == null ? const HomeScreen() : const QuestionScreen()
    );
  }
}