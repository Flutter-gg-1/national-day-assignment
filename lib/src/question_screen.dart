import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_data.dart';
import 'package:quiz_app/data_layer/question_storage.dart';
import 'package:quiz_app/extension/size_config.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/src/score_screen.dart';
import 'package:quiz_app/widget/inkwell/option_container.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  final List<QuestionModel> questions = displayQuestions(dataQ);
  String? selctedanswer;
  bool? isCorrect;
  final QuestionStorage locator = GetIt.I<QuestionStorage>();
  late var question = questions[currentIndex];
  @override
  void initState() {
    super.initState();
    currentIndex = locator.getAnswerLevel();
  }

  void checkAnswer(String answer) {
    selctedanswer = answer;
    answer == questions[currentIndex].answer
        ? isCorrect = true
        : isCorrect = false;
    Future.delayed(Duration.zero, () => setState(() {}));
  }

  void nextQuestion() {
    setState(() {
      if (currentIndex < questions.length - 1) {
        currentIndex++;
        selctedanswer = null;
        isCorrect = null;
        question = questions[currentIndex];
        locator.saveAnswerLevel(currentIndex);
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ScoreScreen(score: currentIndex + 1)),
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
             Text(
              question.question,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              height: context.getHeight() * 0.06,
            ),
            OptionContainer(
              option: question.optionA,
              value: 'A',
              optionNumber: 1,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),
            OptionContainer(
              option: question.optionB,
              value: 'B',
              optionNumber: 2,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: checkAnswer,
            ),
            OptionContainer(
              option: question.optionC,
              value: 'C',
              optionNumber: 3,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: (p0) => checkAnswer(p0),
            ),
            OptionContainer(
              option: question.optionD,
              value: 'D',
              optionNumber: 4,
              isCorrect: isCorrect,
              selctedanswer: selctedanswer,
              onTap: (p0) => checkAnswer,
            ),
            SizedBox(
              height: context.getHeight() * 0.2,
            ),
            ElevatedButton(
                onPressed: nextQuestion,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(
                        context.getWidth() * 0.4, context.getHeight() * 0.07),
                    backgroundColor: const Color(0xff1C8D21)),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ))
          ],
        ),
      )),
    );
  }
}
