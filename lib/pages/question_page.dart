import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz_app/data_layer/question_data.dart';
import 'package:quiz_app/pages/score_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  Color normalColorA = const Color(0xffC9FBB1);
  Color normalColorB = const Color(0xffC9FBB1);
  Color normalColorC = const Color(0xffC9FBB1);
  Color normalColorD = const Color(0xffC9FBB1);
  bool answered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                GetIt.I.get<QuestionData>().lstQuestions[GetIt.I.get<QuestionData>().index].question,
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (!answered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .lstQuestions[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'A') {
                      normalColorA = Colors.green;
                      GetIt.I.get<QuestionData>().score++;
                      GetIt.I.get<QuestionData>().saveScore();
                    } else {
                      normalColorA = Colors.red;
                    }
                    answered = true;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            spreadRadius: 2,
                            color: normalColorA)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GetIt.I.get<QuestionData>().lstQuestions[GetIt.I.get<QuestionData>().index].A,
                        ),
                        const Text("A")
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (!answered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .lstQuestions[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'B') {
                      normalColorB = Colors.green;
                      GetIt.I.get<QuestionData>().score++;
                      GetIt.I.get<QuestionData>().saveScore();
                    } else {
                      normalColorB = Colors.red;
                    }
                    answered = true;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            spreadRadius: 2,
                            color: normalColorB)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GetIt.I.get<QuestionData>().lstQuestions[GetIt.I.get<QuestionData>().index].B,
                        ),
                        const Text("B")
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (!answered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .lstQuestions[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'C') {
                      normalColorC = Colors.green;
                      GetIt.I.get<QuestionData>().score++;
                      GetIt.I.get<QuestionData>().saveScore();
                    } else {
                      normalColorC = Colors.red;
                    }
                    answered = true;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            spreadRadius: 2,
                            color: normalColorC)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GetIt.I.get<QuestionData>().lstQuestions[GetIt.I.get<QuestionData>().index].C,
                        ),
                        const Text("C")
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  if (!answered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .lstQuestions[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'D') {
                      normalColorD = Colors.green;
                      GetIt.I.get<QuestionData>().score++;
                      GetIt.I.get<QuestionData>().saveScore();
                    } else {
                      normalColorD = Colors.red;
                    }
                    answered = true;
                    setState(() {});
                  }
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            spreadRadius: 2,
                            color: normalColorD)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GetIt.I.get<QuestionData>().lstQuestions[GetIt.I.get<QuestionData>().index].D,
                        ),
                        const Text("D")
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (answered) {
                    if (GetIt.I.get<QuestionData>().index <
                        GetIt.I.get<QuestionData>().lstQuestions.length - 1) {
                      normalColorA = const Color(0xffC9FBB1);
                      normalColorB = const Color(0xffC9FBB1);
                      normalColorC = const Color(0xffC9FBB1);
                      normalColorD = const Color(0xffC9FBB1);
                      answered = false;
                      GetIt.I.get<QuestionData>().index++;
                      GetIt.I.get<QuestionData>().saveIndex();
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ScorePage();
                      }));
                    }

                    setState(() {});
                  }
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text("Contiue ",
                          style: TextStyle(
                            fontSize: 30,
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
