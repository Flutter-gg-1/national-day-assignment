import 'package:flutter/material.dart';
import 'package:national_day/src/winner_screen.dart';
import 'package:national_day/widgets/custom_text.dart';
import 'package:national_day/widgets/elevated_button/custom_answeres_elevated_button.dart';
import 'package:national_day/widgets/elevated_button/custom_elevated_button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(text: "What is the capital city of Saudi Arabia?", fontSize: 23, fontWeight: FontWeight.bold,),
              const SizedBox(height: 45,),
              const CustomAnsweresElevatedButton(answerText: "Jeddah", number: "1"),
              const SizedBox(height: 15,),
              const CustomAnsweresElevatedButton(answerText: "Dammam", number: "2"),
              const SizedBox(height: 15,),
              const CustomAnsweresElevatedButton(answerText: "Riyadh", number: "3"),
              const SizedBox(height: 15,),
              const CustomAnsweresElevatedButton(answerText: "Mecca", number: "4"),
              const SizedBox(height: 70,),
              CustomElevatedButton(backgroundColors: [const Color(0xff1C8D21), const Color(0xff1C8D21)], text: "Continue", fontSize: 23, fontWeight: FontWeight.bold,textcolor: Colors.white, onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const Winner();
                }));
              }, height: 80, width: 201,)
            ],
          ),
        )),
    );
  }
}