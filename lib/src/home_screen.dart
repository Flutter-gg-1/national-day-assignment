import 'package:flutter/material.dart';
import 'package:national_day/src/question_screen.dart';
import 'package:national_day/widgets/elevated_button/custom_elevated_button.dart';
import 'package:national_day/widgets/custom_text.dart';

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
            fontSize: 38,
            fontWeight: FontWeight.bold,
          )),
          const CustomText(
            text: "Saudi arabia !",
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Color(0xff1C8D21),
          ),
          const SizedBox(
            height: 80,
          ),
          CustomElevatedButton(
            backgroundColors: [Colors.white, Color(0xff1C8D21)],
            text: "Let’s start",
            fontSize: 38,
            fontWeight: FontWeight.bold,
            textcolor: Colors.black,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (comtext) {
                return const QuestionScreen();
              }));
            },
            width: 270,
            height: 80,
          )
        ],
      )),
    );
  }
}
