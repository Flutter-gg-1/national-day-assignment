import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  const ScoreScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: score>=6 ? const AssetImage('assest/image/scorebackground.jpg'):const AssetImage('assest/image/badScore.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.getHeight() * 0.2,
              ),
               Text(
                score>=6 ?'Congratulation!': 'Bad Score :(',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              Text(
                'Your resault is $score/10',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
