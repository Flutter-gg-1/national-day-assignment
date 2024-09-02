import 'package:flutter/material.dart';
import 'package:national_day_quiz/screens/home_screen.dart';
import 'package:national_day_quiz/screens/question_screen.dart';
import 'package:national_day_quiz/screens/redirect_screen.dart';
import 'package:national_day_quiz/screens/score_screen.dart';

import 'utils/extensions/setup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: RedirectScreen());
  }
}
