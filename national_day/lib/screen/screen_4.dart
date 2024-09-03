import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Congratulations!'),
          SizedBox(height: context.getScreenWidth(multiply: 0.1)),

          Image.asset('assets/star.png'),
        ],
      )),
    );
  }
}
