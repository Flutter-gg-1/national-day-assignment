import 'package:flutter/material.dart';
import 'package:quiz_assignment/widgets/cards/choiec_widget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              textAlign: TextAlign.center,
              "What is the capital city of Saudi Arabia?",
              style: TextStyle(fontSize: 23.01, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            const ChoiecWidget(),
            const ChoiecWidget(),
            const ChoiecWidget(),
            const ChoiecWidget(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1C8D21),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    fixedSize: const Size(201, 60)),
                onPressed: () {},
                child: const Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
