import 'package:flutter/material.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';
import 'package:national_day_assignment/widgets/custom_resultscreen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          const CustomResult(),
          Positioned(
              width: context.getWidth(),
              top: context.getHeight() / 2.6,
              bottom: 0,
              left: 0,
              child: SizedBox(
                  width: context.getWidth(),
                  height: context.getHeight() / 2,
                  child: Image.asset(
                    'assets/Group 6.png',
                    fit: BoxFit.cover,
                  )))
        ]),
      ),
    );
  }
}
