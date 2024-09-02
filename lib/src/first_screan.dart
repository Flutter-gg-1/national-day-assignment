import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nationalday/datalayer/question_data.dart';
import 'package:nationalday/src/home/home_screen.dart';

class FirstScrean extends StatelessWidget {
  const FirstScrean({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      GetIt.I.get<QuestionData>().loadData();
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}