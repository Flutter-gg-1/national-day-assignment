import 'package:flutter/material.dart';
import 'package:national_day_quiz/data_layer/question_data.dart';
import 'package:national_day_quiz/screens/score_screen.dart';
import 'package:national_day_quiz/utils/extensions/setup.dart';
import 'package:national_day_quiz/widgets/answer_tile.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  const QuestionScreen({super.key, required this.index});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final questions = locator.get<QuestionData>().questions;
  final options = locator.get<QuestionData>().choices;
  final answers = locator.get<QuestionData>().answers;
  final optionsIndex = ['A', 'B', 'C', 'D'];
  late int qIndex;
  String? selectedOption;
  String? correctAnswer;
  bool isAnswered = false;

  @override
  void initState() {
    qIndex = widget.index;
    correctAnswer = answers[qIndex];
    super.initState();
  }

  void onAnswer(String option) {
    if (isAnswered) return;

    setState(() {
      selectedOption = option;
      isAnswered = true;
      bool isCorrect = selectedOption == correctAnswer;
      locator.get<QuestionData>().saveScore(isCorrect, qIndex + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[qIndex],
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ...List.generate(4, (index) {
                bool? isCorrect = selectedOption == optionsIndex[index]
                    ? selectedOption == correctAnswer
                    : null;
                return AnswerTile(
                  onTap: () => onAnswer(optionsIndex[index]),
                  option: options[qIndex][optionsIndex[index]]!,
                  isCorrect: isCorrect,
                  index: index,
                );
              }),
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.33)),
                      backgroundColor: const Color(0xff1C8D21),
                      minimumSize: const Size(201, 81.44)),
                  onPressed: () {
                    if (isAnswered) {
                      if (qIndex != 9) {
                        setState(() {
                          qIndex++;
                          correctAnswer = answers[qIndex];
                          selectedOption = null;
                          isAnswered = false;
                        });
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScoreScreen(
                                    isGoodScore:
                                        locator.get<QuestionData>().score >
                                            5)));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                        'Answer the question!!!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )));
                    }
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 22.53, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
