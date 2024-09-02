import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_assignment/data/data_layer/quiz_data.dart';
import 'package:quiz_assignment/helper/extensions/nav.dart';
import 'package:quiz_assignment/screens/quiz_screen.dart';
import 'package:quiz_assignment/widgets/buttons/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Explore',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text("Saudi arabia !",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C8D21))),
            const SizedBox(height: 50),
            StartButton(
                text: GetIt.I.get<QuizData>().box.hasData("count")
                    ? "Continue quiz"
                    : "Let’s start",
                onPressed: () {
                  GetIt.I.get<QuizData>().addData();
                  context.navTo(page: const QuizScreen());
                })
          ],
        ),
      ),
    );
  }
}
