import 'dart:async';

import 'package:flutter/material.dart';
import 'package:national_day_quiz/data_layer/question_data.dart';
import 'package:national_day_quiz/screens/home_screen.dart';
import 'package:national_day_quiz/screens/question_screen.dart';
import 'package:national_day_quiz/utils/extensions/setup.dart';

class RedirectScreen extends StatelessWidget {
  const RedirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            if (locator.get<QuestionData>().questionIndex == 0) {
              return const HomeScreen();
            } else {
              return QuestionScreen(index: locator.get<QuestionData>().questionIndex);
            }
          },
        ),
      );
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}