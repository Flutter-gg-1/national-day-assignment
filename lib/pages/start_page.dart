import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_data.dart';
import 'package:quiz_app/pages/question_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Your provious score is: ${GetIt.I.get<QuestionData>().score}"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Explore',
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              'Suadi Arabia !',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                GetIt.I.get<QuestionData>().score = 0;
                GetIt.I.get<QuestionData>().saveScore();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const QuestionPage();
                }));
              },
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text("Let's start",
                        style: TextStyle(
                          fontSize: 30,
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
