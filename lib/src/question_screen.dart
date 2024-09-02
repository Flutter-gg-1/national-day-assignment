import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_day/widgets/custom_text.dart';
import 'package:national_day/widgets/elevated_button/custom_answeres_elevated_button.dart';
import 'package:national_day/widgets/elevated_button/custom_elevated_button.dart';

import '../data_layer/data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final locator = GetIt.I.get<QuestionData>();
  String? selectedAnswer;
  String? correctedAnswer;

  @override
  void initState() {
    super.initState();
    locator.loadData();
    setState(() {});
  }

  void checkAnswer(String value) {
    selectedAnswer = value;
    correctedAnswer = locator.data[locator.currentQIndex].answer;
    if (value == correctedAnswer) {
      locator.level++;
    }
    setState(() {});
  }

  Color getColor(String value) {
    if (value == selectedAnswer) {
      if (selectedAnswer == correctedAnswer) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }
    return Color(0xffC9FBB1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 350,
                child: CustomText(
                  text: locator.data[locator.currentQIndex].question,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 45,
            ),
            CustomAnsweresElevatedButton(
              answerText: locator.data[locator.currentQIndex].A,
              number: "1",
              onPressed: () {
                selectedAnswer == null ? checkAnswer("A") : null;
                print(selectedAnswer);
              },
              color: getColor("A"),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomAnsweresElevatedButton(
              answerText: locator.data[locator.currentQIndex].B,
              number: "2",
              onPressed: () {
                selectedAnswer == null ? checkAnswer("B") : null;
              },
              color: getColor("B"),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomAnsweresElevatedButton(
              answerText: locator.data[locator.currentQIndex].C,
              number: "3",
              onPressed: () {
                selectedAnswer == null ? checkAnswer("C") : null;
              },
              color: getColor("C"),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomAnsweresElevatedButton(
              answerText: locator.data[locator.currentQIndex].D,
              number: "4",
              onPressed: () {
                selectedAnswer == null ? checkAnswer("D") : null;
              },
              color: getColor("D"),
            ),
            const SizedBox(
              height: 70,
            ),
            CustomElevatedButton(
              backgroundColors: const [Color(0xff1C8D21), Color(0xff1C8D21)],
              text: "Continue",
              fontSize: 23,
              fontWeight: FontWeight.bold,
              textcolor: Colors.white,
              onPressed: () {
                selectedAnswer = null;
                correctedAnswer = null;
                locator.nextQuestion(context);
                setState(() {});
              },
              height: 80,
              width: 201,
            )
          ],
        ),
      )),
    );
  }
}
