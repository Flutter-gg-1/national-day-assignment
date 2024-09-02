import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.question});
  final String question;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      question,
      style: const TextStyle(fontSize: 23.01, fontWeight: FontWeight.bold),
    );
  }
}
