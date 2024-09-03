import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final VoidCallback onPressed;

  AnswerButton({required this.answer, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white, // Fill with white
          foregroundColor: Colors.green, // Text color
          padding: const EdgeInsets.symmetric(vertical: 12),
          side: const BorderSide(color: Colors.green, width: 1), // Green border
        ),
        onPressed: onPressed,
        child: Text(
          answer,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
