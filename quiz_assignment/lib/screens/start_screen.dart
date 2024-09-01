import 'package:flutter/material.dart';
import 'package:quiz_assignment/helper/extensions/nav.dart';
import 'package:quiz_assignment/screens/quiz_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Explore',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const Text("Saudi arabia !",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C8D21))),
            const SizedBox(height: 50),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff1C8D21),
                      Colors.white,
                    ],
                  )),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      fixedSize: const Size(250, 80),
                      shape: const BeveledRectangleBorder()),
                  onPressed: () {
                    context.navTo(page: QuizScreen());
                  },
                  child: const Text("Let’s start",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
