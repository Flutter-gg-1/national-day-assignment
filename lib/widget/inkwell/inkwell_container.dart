import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';
import 'package:quiz_app/src/question_screen.dart';

class InkWellContainer extends StatelessWidget {
  const InkWellContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const QuestionScreen(),
          )),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.symmetric(
            horizontal: context.getWidth() * 0.15,
            vertical: context.getHeight() * 0.06),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: const LinearGradient(colors: [
              Color(0xffFFFFFF),
              Color(0xff1C8D21),
            ])),
        child: const Text(
          "Let's start",
          style: TextStyle(
              fontSize: 42, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
