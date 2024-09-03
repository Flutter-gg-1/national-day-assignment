import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_assignment/Colors/app_color.dart';
import 'package:national_assignment/DataLayer/qustions_data.dart';
import 'package:national_assignment/Screens/result_score.dart';

class QustionsScreen extends StatefulWidget {
  const QustionsScreen({super.key});

  @override
  State<QustionsScreen> createState() => _QustionsScreenState();
}

class _QustionsScreenState extends State<QustionsScreen> {
  // int index = 0;
  // late QuestionData data;
  // String? selectedAnswer; // Track the selected answer
  // bool isCorrect = false; // Track if the selected answer is correct

  // @override
  // void initState() {
  //   super.initState();
  //   data = GetIt.I.get<QuestionData>();
  //   data.loadData();
  // }

  // void checkAnswer() {
  //   // Compare the selected answer with the correct answer
  //   if (selectedAnswer == data.dataQuestion![index].answer) {
  //     isCorrect = true;
  //   } else {
  //     isCorrect = false;
  //   }
  // }

  Color normalColorA = const Color(0xffC9FBB1);
  Color normalColorB = const Color(0xffC9FBB1);
  Color normalColorC = const Color(0xffC9FBB1);
  Color normalColorD = const Color(0xffC9FBB1);
  bool answered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                // Text(data.dataQuestion![index].question,
                //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                //     textAlign: TextAlign.center),
                Text( GetIt.I
                    .get<QuestionData>()
                    .lstQuestions[GetIt.I.get<QuestionData>().index]
                    .question,)
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
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
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: normalColorA,
                        width: 2.0,
                      )),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          GetIt.I
                              .get<QuestionData>()
                              .lstQuestions[GetIt.I.get<QuestionData>().index]
                              .A,
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: normalColorA, width: 2)),
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(color: AppColor().answerColor),
                            ),
                          ),
                        )
                      ]))),
            ),
            InkWell(
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
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: normalColorB,
                    width: 2.0,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          GetIt.I
                              .get<QuestionData>()
                              .lstQuestions[GetIt.I.get<QuestionData>().index]
                              .B,
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: normalColorA, width: 2)),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: AppColor().answerColor),
                            ),
                          ),
                        )
                      ]))),
            ),
            InkWell(
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
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: normalColorC,
                    width: 2.0,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          GetIt.I
                              .get<QuestionData>()
                              .lstQuestions[GetIt.I.get<QuestionData>().index]
                              .C,
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: normalColorA, width: 2)),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(color: AppColor().answerColor),
                            ),
                          ),
                        )
                      ]))),
            ),
            InkWell(
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
                  height: 56,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: normalColorD,
                    width: 2.0,
                  )),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          GetIt.I
                              .get<QuestionData>()
                              .lstQuestions[GetIt.I.get<QuestionData>().index]
                              .D,
                          style: TextStyle(fontSize: 20),
                        ),
                        Spacer(),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: normalColorD, width: 2)),
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(color: AppColor().answerColor),
                            ),
                          ),
                        )
                      ]))),
            ),
            SizedBox(
                height: 55,
                width: 190,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: AppColor().greenColor),
                    onPressed: () {
                      if (answered) {
                        if (GetIt.I.get<QuestionData>().index <
                            GetIt.I.get<QuestionData>().lstQuestions.length -
                                1) {
                          normalColorA = const Color(0xffC9FBB1);
                          normalColorB = const Color(0xffC9FBB1);
                          normalColorC = const Color(0xffC9FBB1);
                          normalColorD = const Color(0xffC9FBB1);
                          answered = false;
                          GetIt.I.get<QuestionData>().index++;
                          GetIt.I.get<QuestionData>().saveIndex();
                        } else {
                          GetIt.I.get<QuestionData>().index = 0;
                          GetIt.I.get<QuestionData>().saveIndex();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ResultScreen();
                          }));
                        }

                        setState(() {});
                      }
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )))
          ],
        ),
      ),
    );
  }
}
