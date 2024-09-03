import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_day/buttons/answer_button.dart';
import 'package:national_day/buttons/continue_button.dart';
import 'package:national_day/data_layer/question_data.dart';
import 'package:national_day/extension/nav.dart';
import 'package:national_day/screen/score_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  late QuestionData data;
  int questionIndex = 0;

  String? selectedAnswer;
  Map<String, Color> answerColors = {
    'A': const Color(0xffC9FBB1),
    'B': const Color(0xffC9FBB1),
    'C': const Color(0xffC9FBB1),
    'D': const Color(0xffC9FBB1),
  };

  @override
  void initState() {
    super.initState();
    data = GetIt.I.get<QuestionData>();
    data.loadData();
  }

  void answerSelection(String selected) {
    if (selectedAnswer != null) return; // Prevent changing the selection if already made

    setState(() {
      final correctAnswer = data.dataQuestion![questionIndex].answer;

      if (selected == correctAnswer) {
        answerColors[selected] = const Color(0xff1C8D21); // Green for correct
      } else {
        answerColors[selected] = const Color(0xffF0676F); // Red for wrong
        answerColors[correctAnswer] = const Color(0xff1C8D21); // Green for correct
      }
      selectedAnswer = selected;

      data.checkAnswer(select: selected, index: questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = data.dataQuestion![questionIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                question.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              AnswerButton(
                option: question.a,
                number: "1",
                color: answerColors['A']!,
                onSelect: () => answerSelection("A"),
                isDisabled: selectedAnswer != null,
              ),
              const SizedBox(height: 15),
              AnswerButton(
                option: question.b,
                number: "2",
                color: answerColors['B']!,
                onSelect: () => answerSelection("B"),
                isDisabled: selectedAnswer != null,
              ),
              const SizedBox(height: 15),
              AnswerButton(
                option: question.c,
                number: "3",
                color: answerColors['C']!,
                onSelect: () => answerSelection("C"),
                isDisabled: selectedAnswer != null,
              ),
              const SizedBox(height: 15),
              AnswerButton(
                option: question.d,
                number: "4",
                color: answerColors['D']!,
                onSelect: () => answerSelection("D"),
                isDisabled: selectedAnswer != null,
              ),
              const SizedBox(height: 70),
              ContinueButton(onPressed: () {
                if (questionIndex < data.dataQuestion!.length - 1) {
                  setState(() {
                    questionIndex++;

                    selectedAnswer = null;
                    answerColors = {
                      'A': const Color(0xffC9FBB1),
                      'B': const Color(0xffC9FBB1),
                      'C': const Color(0xffC9FBB1),
                      'D': const Color(0xffC9FBB1),
                    };
                  });
                } else {
                  data.saveAnswers();
                  final score = data.calculateScore();
                  final totalQuestions = data.dataQuestion!.length;

                  context.push(screen: ScoreScreen(
                        score: score,
                        totalQuestions: totalQuestions,
                      ));
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}