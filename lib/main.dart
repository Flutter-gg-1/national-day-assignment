import 'package:flutter/material.dart';
import 'package:national_day/src/screens/question_screen.dart';
import 'package:national_day/src/services/setup_service.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: QuestionScreen(),
    );
  }
}
