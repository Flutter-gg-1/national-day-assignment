import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_assignment/data/data_layer/quiz_data.dart';
import 'package:quiz_assignment/helper/extensions/nav.dart';
import 'package:quiz_assignment/screens/result_screen.dart';
import 'package:quiz_assignment/widgets/buttons/continue_button.dart';
import 'package:quiz_assignment/widgets/cards/choiec_widget.dart';
import 'package:quiz_assignment/widgets/cards/question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var data = GetIt.I.get<QuizData>().quizQ;
  int level = GetIt.I.get<QuizData>().loadLevel();

  Color choiec1 = const Color(0xffC9FBB1);
  Color choiec2 = const Color(0xffC9FBB1);
  Color choiec3 = const Color(0xffC9FBB1);
  Color choiec4 = const Color(0xffC9FBB1);

  @override
  void initState() {
    super.initState();
    var data = GetIt.I.get<QuizData>();
    data.addData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QuestionWidget(question: data[level].question),
            const SizedBox(height: 50),
            ChoiecWidget(
              value: choiec1,
              choiec: data[level].a,
              number: "1",
              onSelect: () {
                choiec1 = GetIt.I
                    .get<QuizData>()
                    .checkAnswer(select: "A", index: level);
                setState(() {});
              },
            ),
            ChoiecWidget(
              value: choiec2,
              choiec: data[level].b,
              number: "2",
              onSelect: () {
                choiec2 = GetIt.I
                    .get<QuizData>()
                    .checkAnswer(select: "B", index: level);
                setState(() {});
              },
            ),
            ChoiecWidget(
              value: choiec3,
              choiec: data[level].c,
              number: "3",
              onSelect: () {
                choiec3 = GetIt.I
                    .get<QuizData>()
                    .checkAnswer(select: "C", index: level);

                setState(() {});
              },
            ),
            ChoiecWidget(
              value: choiec4,
              choiec: data[level].d,
              number: "4",
              onSelect: () {
                choiec4 = GetIt.I
                    .get<QuizData>()
                    .checkAnswer(select: "D", index: level);
                setState(() {});
              },
            ),
            const SizedBox(height: 50),
            ContinueButton(
              onContinue: () {
                if (level < data.length - 1) {
                  level++;
                  GetIt.I.get<QuizData>().saveLevel(count: level);
                  choiec1 = const Color(0xffC9FBB1);
                  choiec2 = const Color(0xffC9FBB1);
                  choiec3 = const Color(0xffC9FBB1);
                  choiec4 = const Color(0xffC9FBB1);
                  setState(() {});
                } else {
                  context.navTo(page: const ResultScreen());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
