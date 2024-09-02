import 'package:flutter/material.dart';
import 'package:national_day_quiz/data_layer/question_data.dart';
import 'package:national_day_quiz/utils/extensions/screen.dart';
import 'package:national_day_quiz/utils/extensions/setup.dart';

class ScoreScreen extends StatelessWidget {
  final bool isGoodScore;
  const ScoreScreen({super.key, required this.isGoodScore});

  @override
  Widget build(BuildContext context) {
    Color badScore = Colors.grey;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('assets/images/celebrate.png',
              color: isGoodScore ? null : badScore),
          Positioned(
            top: context.getHeight() / 3.7,
            left: context.getWidth() / 3.1,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: context.getHeight() / 10.54,
                    left: -context.getWidth() / 25.57,
                    child: Image.asset(
                      'assets/images/left.png',
                      color: isGoodScore ? null : badScore.withOpacity(0.5),
                    )),
                Positioned(
                    top: context.getHeight() / 10.54,
                    left: context.getWidth() / 6.17,
                    child: Image.asset('assets/images/right.png',
                        color: isGoodScore ? null : badScore.withOpacity(0.5))),
                Image.asset('assets/images/bigstar.png',
                    color: isGoodScore ? null : badScore),
                Positioned(
                  top: context.getHeight() / 33.74,
                  left: context.getWidth() / 16.45,
                  child: Container(
                    width: context.getWidth() / 4.675,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/circle.png'))),
                    child: Image.asset('assets/images/smallstar.png'),
                  ),
                ),
              ],
            ),
          ),
           Align(
            alignment: Alignment.center,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 150,),
                       Text(
                        isGoodScore? 'Congratulation!' : 'You can do better!!',
                        style: const TextStyle(
                            fontSize: 42.21, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your result is: ${locator.get<QuestionData>().score} /10',
                        style: const TextStyle(
                            fontSize: 30.15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/gradient.png',
                color: isGoodScore ? null : badScore ,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
