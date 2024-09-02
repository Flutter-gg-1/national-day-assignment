import 'package:flutter/material.dart';

class AnswerCell extends StatelessWidget {
  const AnswerCell(
      {required this.answerKey,
      required this.answerValue,
      required this.answerNumber,
      required this.correctAnswer,
      this.didAnswer = false});
  final String answerKey;
  final String answerValue;
  final String answerNumber;
  final String correctAnswer;
  final bool didAnswer;

  Color get boxColor {
    if (didAnswer) {
      return answerKey == correctAnswer ? Colors.green.shade700 : Colors.red;
    } else {
      return Colors.green.shade100;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: boxColor, width: 1.5),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [BoxShadow(color: boxColor, offset: Offset(0, 3))]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 7, child: Text(answerValue)),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: boxColor),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Text(
                      answerNumber,
                      style: TextStyle(color: boxColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
