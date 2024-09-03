import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_day_assignment/data/question_data.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';
import 'package:national_day_assignment/screens/result_screen.dart';
import 'package:national_day_assignment/widgets/custom_field_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int index = 0;
  bool isFinished = false;
  Color colorQuestion1 = const Color(0xffC9FBB1);
  Color colorQuestion2 = const Color(0xffC9FBB1);
  Color colorQuestion3 = const Color(0xffC9FBB1);
  Color colorQuestion4 = const Color(0xffC9FBB1);

  @override
  void setState(VoidCallback fn) {
    if (isFinished) {
      GetIt.I.get<QuestionData>().totoalAnswoerd = 0;
      isFinished = false;
      GetIt.I.get<QuestionData>().isAnsowered = true;
      index = 0;
      GetIt.I.get<QuestionData>().index = 0;
      GetIt.I.get<QuestionData>().saveAll(); // Save all data
      setState(() {});
      Navigator.pop(context);
    }

    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: context.getWidth() / 1.4,
                child: Center(
                  child: Text(
                    GetIt.I
                        .get<QuestionData>()
                        .questionDataList[GetIt.I.get<QuestionData>().index]
                        .question,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: context.getHeight() / 17,
              ),
              InkWell(
                onTap: () async {
                  if (GetIt.I.get<QuestionData>().isAnsowered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .questionDataList[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'A') {
                      GetIt.I.get<QuestionData>().totoalAnswoerd++;
                      colorQuestion1 = const Color(0xff1C8D21);
                    } else {
                      colorQuestion1 = const Color(0xffF0676F);
                    }
                    index++;
                    GetIt.I.get<QuestionData>().isAnsowered = false;
                    GetIt.I.get<QuestionData>().index = index;
                    await GetIt.I
                        .get<QuestionData>()
                        .saveAll(); // Save all data
                    setState(() {});
                  }
                },
                child: CustomFieldQuestion(
                  index: GetIt.I.get<QuestionData>().index,
                  colorAnswerd: colorQuestion1,
                  question: GetIt.I
                      .get<QuestionData>()
                      .questionDataList[GetIt.I.get<QuestionData>().index]
                      .a,
                  questionNumber: '1',
                ),
              ),
              SizedBox(
                height: context.getHeight() / 40,
              ),
              InkWell(
                onTap: () async {
                  if (GetIt.I.get<QuestionData>().isAnsowered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .questionDataList[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'B') {
                      GetIt.I.get<QuestionData>().totoalAnswoerd++;
                      colorQuestion2 = const Color(0xff1C8D21);
                    } else {
                      colorQuestion2 = const Color(0xffF0676F);
                    }
                    index++;
                    GetIt.I.get<QuestionData>().isAnsowered = false;
                    GetIt.I.get<QuestionData>().index = index;
                    await GetIt.I
                        .get<QuestionData>()
                        .saveAll(); // Save all data
                    setState(() {});
                  }
                },
                child: CustomFieldQuestion(
                  index: GetIt.I.get<QuestionData>().index,
                  colorAnswerd: colorQuestion2,
                  question: GetIt.I
                      .get<QuestionData>()
                      .questionDataList[GetIt.I.get<QuestionData>().index]
                      .b,
                  questionNumber: '2',
                ),
              ),
              SizedBox(
                height: context.getHeight() / 40,
              ),
              InkWell(
                onTap: () async {
                  if (GetIt.I.get<QuestionData>().isAnsowered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .questionDataList[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'C') {
                      GetIt.I.get<QuestionData>().totoalAnswoerd++;
                      colorQuestion3 = const Color(0xff1C8D21);
                    } else {
                      colorQuestion3 = const Color(0xffF0676F);
                    }
                    index++;
                    GetIt.I.get<QuestionData>().isAnsowered = false;
                    GetIt.I.get<QuestionData>().index = index;
                    await GetIt.I
                        .get<QuestionData>()
                        .saveAll(); // Save all data
                    setState(() {});
                  }
                },
                child: CustomFieldQuestion(
                  index: GetIt.I.get<QuestionData>().index,
                  colorAnswerd: colorQuestion3,
                  question: GetIt.I
                      .get<QuestionData>()
                      .questionDataList[GetIt.I.get<QuestionData>().index]
                      .c,
                  questionNumber: '3',
                ),
              ),
              SizedBox(
                height: context.getHeight() / 40,
              ),
              InkWell(
                onTap: () async {
                  if (GetIt.I.get<QuestionData>().isAnsowered) {
                    if (GetIt.I
                            .get<QuestionData>()
                            .questionDataList[GetIt.I.get<QuestionData>().index]
                            .answer ==
                        'D') {
                      GetIt.I.get<QuestionData>().totoalAnswoerd++;
                      colorQuestion4 = const Color(0xff1C8D21);
                    } else {
                      colorQuestion4 = const Color(0xffF0676F);
                    }
                    index++;
                    GetIt.I.get<QuestionData>().isAnsowered = false;
                    GetIt.I.get<QuestionData>().index = index;
                    await GetIt.I
                        .get<QuestionData>()
                        .saveAll(); // Save all data
                    setState(() {});
                  }
                },
                child: CustomFieldQuestion(
                  index: GetIt.I.get<QuestionData>().index,
                  colorAnswerd: colorQuestion4,
                  question: GetIt.I
                      .get<QuestionData>()
                      .questionDataList[GetIt.I.get<QuestionData>().index]
                      .d,
                  questionNumber: '4',
                ),
              ),
              SizedBox(
                height: context.getHeight() / 14,
              ),
              Container(
                width: context.getWidth() / 2,
                height: context.getHeight() / 8,
                decoration: BoxDecoration(
                  color: const Color(0xff1C8D21),
                  borderRadius: BorderRadius.circular(17.33),
                ),
                child: TextButton(
                  onPressed: () async {
                    if (GetIt.I.get<QuestionData>().index + 1 ==
                        GetIt.I.get<QuestionData>().questionDataList.length) {
                      isFinished = true;
                      await GetIt.I
                          .get<QuestionData>()
                          .saveAll(); // Save all data
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ResultScreen();
                      }));
                    } else {
                      if (!GetIt.I.get<QuestionData>().isAnsowered) {
                        GetIt.I.get<QuestionData>().index++;
                        GetIt.I.get<QuestionData>().isAnsowered = true;
                        colorQuestion1 = const Color(0xffC9FBB1);
                        colorQuestion2 = const Color(0xffC9FBB1);
                        colorQuestion3 = const Color(0xffC9FBB1);
                        colorQuestion4 = const Color(0xffC9FBB1);
                        await GetIt.I
                            .get<QuestionData>()
                            .saveAll(); // Save all data
                        setState(() {});
                      }
                    }
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
