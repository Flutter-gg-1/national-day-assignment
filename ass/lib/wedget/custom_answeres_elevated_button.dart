import 'package:flutter/material.dart';

class CustomAnsweresElevatedButton extends StatelessWidget {
  const CustomAnsweresElevatedButton({
    super.key,
    required this.answerText,
    required this.number,
    required this.onPressed,
    this.isSelected = false,
    this.isCorrect = false,
    this.isIncorrect = false,
  });

  final String answerText;
  final String number;
  final Function() onPressed;
  final bool isSelected;
  final bool isCorrect;
  final bool isIncorrect;

  @override
  Widget build(BuildContext context) {
    Color borderColor;
    Color backgroundColor;

    if (isSelected && isCorrect) {
      borderColor = Colors.green;
      backgroundColor = Colors.green.shade100;
    } else if (isSelected && isIncorrect) {
      borderColor = Colors.red;
      backgroundColor = Colors.red.shade100;
    } else {
      borderColor = Colors.grey;
      backgroundColor = Colors.white;
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 2, color: borderColor),
        ),
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              answerText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 17,
            width: 17,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 1, color: borderColor),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  fontSize: 8,
                  color: borderColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
