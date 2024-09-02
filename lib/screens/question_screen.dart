import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudi_assignment/data/questions.dart';
import 'package:saudi_assignment/widgets/view_choices.dart';
import 'package:saudi_assignment/widgets/view_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ViewQuestion(question: GetIt.I.get<Questions>().getCurrentQuestion().question),
              const SizedBox(height: 44,),
              ViewChoices(
                choices: GetIt.I.get<Questions>().getCurrentChoices(),
                onChoice : (choice){
                  GetIt.I.get<Questions>().isClicked ? null : {
                  GetIt.I.get<Questions>().checkAnswer(choice),
                  GetIt.I.get<Questions>().isClicked = true,
                  Future.microtask((){
                    setState(() {});
                  })

                  };
                }
              ),
              const SizedBox(height: 69.23,),
              Container(
                width: 201,
                height: 81.44,
                decoration: BoxDecoration(
                  color: const Color(0xff1c8d21),
                  borderRadius: BorderRadius.circular(17.33)
                ),
                child: TextButton(
                  onPressed: GetIt.I.get<Questions>().isClicked ? (){
                    GetIt.I.get<Questions>().handleNext();
                    GetIt.I.get<Questions>().isClicked = false;
                    setState(() {});
                  } : null,
                  child: const Text("Continue", style: TextStyle(fontSize: 22.53, fontWeight: FontWeight.w700, color: Colors.white),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}