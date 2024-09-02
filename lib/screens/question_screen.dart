import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudi_assignment/data/questions.dart';
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
              Column(
                children: List.generate(GetIt.I.get<Questions>().getCurrentChoices().length, (index){
                  return Column(
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: isClicked ? null : (){
                          GetIt.I.get<Questions>().checkAnswer(index);
                          isClicked = true;
                          setState(() {});
                        },
                        child: Container(
                          width: 312.78,
                          height: 37.11,
                          padding: const EdgeInsets.symmetric(horizontal: 15.9),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: GetIt.I.get<Questions>().choicesColors[index], width: 0.82),
                            borderRadius: BorderRadius.circular(8.16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(GetIt.I.get<Questions>().getCurrentChoices()[index], style: const TextStyle(fontSize: 8.16, fontWeight: FontWeight.w400,color: Colors.black),),
                              Container(
                                width: 16.31,
                                height: 16.31,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(border: Border.all(color: const Color(0xffc9fbb1), width: 0.82),borderRadius: BorderRadius.circular(3.26)),
                                child: Text((index+1).toString(), style: const TextStyle(fontSize: 8.16, fontWeight: FontWeight.w700,color: Color(0xffc9fbb1)),),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.26,)
                    ],
                  );
                }),
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
                  onPressed: isClicked ? (){
                    GetIt.I.get<Questions>().handleNext();
                    isClicked = false;
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