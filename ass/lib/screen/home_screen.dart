import 'package:ass/screen/question_screen.dart';
import 'package:ass/wedget/custom_elevated_button.dart';
import 'package:ass/wedget/custom_text.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: CustomText(
                text: "Explore",
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomText(
              text: "Saudi Arabia!",
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xff1C8D21),
            ),
            const SizedBox(height: 80),
            CustomElevatedButton(
              backgroundColors: [Colors.white, const Color.fromARGB(255, 21, 152, 27)],
              text: "Let’s start",
              fontSize: 35,
              fontWeight: FontWeight.bold,
              textcolor: Colors.black,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const QuestionScreen();
                }));
              },
              width: 254,
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
