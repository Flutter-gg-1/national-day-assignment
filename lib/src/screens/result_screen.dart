import 'package:flutter/material.dart';
import 'package:national_day/src/screens/question_screen.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  const ResultScreen({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Congratulations!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Your result is: $score / 10',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuestionScreen()));
              },
              child: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
