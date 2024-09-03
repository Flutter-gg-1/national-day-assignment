import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saudi_assignment/data/questions.dart';
import 'package:saudi_assignment/screens/question_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GetIt.I.get<Questions>().index = 0;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Explore", style: GoogleFonts.dmSans(fontSize: 42.21, fontWeight: FontWeight.w700, color: Colors.black),),
              Text("Saudi arabia !", style: GoogleFonts.dmSans(fontSize: 42.21, fontWeight: FontWeight.w700, color: const Color(0xff1c8d21)),),
              const SizedBox(height: 79,),
              Container(
                width: 305,
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(stops: [0.001,0.8],begin: Alignment.topLeft,colors: [Colors.white,Color(0xff1c8d21)]),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(
                  style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>const QuestionScreen()
                      ),
                      (predicate)=>false
                    );
                  },
                  child: Text("Let's start", style: GoogleFonts.dmSans(fontSize: 42.21, fontWeight: FontWeight.w700, color: Colors.black))
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}