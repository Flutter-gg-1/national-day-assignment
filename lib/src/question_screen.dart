import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_storage.dart';
import 'package:quiz_app/extension/size_config.dart';
import 'package:quiz_app/src/score_screen.dart';
import 'package:quiz_app/widget/button/green_button.dart';
import 'package:quiz_app/widget/inkwell/option_container.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  int score = 0;
  String? selctedanswer;
  bool? isCorrect;
  final QuestionStorage locator = GetIt.I<QuestionStorage>();
  late var question = locator.questions[currentIndex];
  @override
  void initState() {
    super.initState();
    currentIndex = locator.getAnswerLevel();
  }

  void checkAnswer(String answer) {
    selctedanswer = answer;
    if (answer == question.answer) {
      isCorrect = true;
      score++;
      locator.saveScore(score);
      Future.delayed(Duration.zero, () => setState(() {}));
    } else {
      isCorrect = false;

      Future.delayed(Duration.zero, () => setState(() {}));
    }
  }

  void nextQuestion() {
    setState(() {
      if (currentIndex < locator.questions.length - 1) {
        currentIndex++;
        selctedanswer = null;
        isCorrect = null;
        question = locator.questions[currentIndex];
        locator.saveAnswerLevel(currentIndex);
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ScoreScreen(score: locator.getScore())),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: context.getHeight() * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                question.question,
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              height: context.getHeight() * 0.06,
            ),

            //option A
            OptionContainer(
              option: question.optionA,
              value: 'A',
              optionNumber: 1,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),

            //option B
            OptionContainer(
              option: question.optionB,
              value: 'B',
              optionNumber: 2,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),

            //option C
            OptionContainer(
              option: question.optionC,
              value: 'C',
              optionNumber: 3,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),

            //option D
            OptionContainer(
              option: question.optionD,
              value: 'D',
              optionNumber: 4,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),
            SizedBox(
              height: context.getHeight() * 0.2,
            ),

            GreenButton(
              onPressed: nextQuestion,
              title: 'Continue',
            )
          ],
        ),
      )),
    );
  }
}
