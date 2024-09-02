import 'package:flutter/material.dart';
import 'package:national_assignment/Colors/app_color.dart';
import 'package:national_assignment/widgets/answer_button.dart';

class QustionsScreen extends StatelessWidget {
  const QustionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                Text("What is the capital city of Saudi Arabia?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            answersButton(choise: "1", answer: "Jeddah"),
            SizedBox(
              height: 15,
            ),
            answersButton(choise: "2", answer: "Dammam"),
            SizedBox(
              height: 15,
            ),
            answersButton(choise: "3", answer: "Riyadh"),
            SizedBox(
              height: 15,
            ),
            answersButton(choise: "4", answer: "Mecca"),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 55,
                width: 190,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: AppColor().greenColor),
                    onPressed: () {},
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )))
          ],
        ),
      ),
    );
  }
}
