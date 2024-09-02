import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  const ScoreScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assest/image/scorebackground.jpg'),
              fit: BoxFit.cover)),

              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: context.getHeight()*0.2,),
                      const Text('Congratulation!',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
                      Text('Your resault is $score/10',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
    );
  }
}
