import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ScoreScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final bool isWinner = score > 5;
    final String message = isWinner
        ? "   Congratulations!"
        : "Better luck \nnext time!";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            if (isWinner)
              Image.asset(
                "assets/winner.png",
                width: 420,
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 600,
                child: Image.asset(
                  "assets/Group 6.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            if (isWinner)
              Positioned(
                top: 200,
                left: 120,
                child: Image.asset("assets/Group 7.png"),
              ),
            Positioned(
              bottom: 380,
              right: 50,
              child: SizedBox(
              width: 400,
                
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 340,
              right: 90,
              child: Text(
                "Your result is: $score/$totalQuestions",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
