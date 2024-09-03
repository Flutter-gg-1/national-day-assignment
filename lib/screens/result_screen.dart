import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saudi_assignment/data/questions.dart';
import 'package:confetti/confetti.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}


class _ResultScreenState extends State<ResultScreen> {

  ConfettiController controller = ConfettiController();

  @override
  void initState() {
    super.initState();
    controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ConfettiWidget(
                  blastDirection: 80,
                  colors: const [Color(0xffc9fbb1), Color(0xffaae6a9), Color(0xff24e72c)],
                  confettiController: controller
                ),
              ),
              const SizedBox(height: 193,),
              Image.asset('assets/star.png', width: 150,),
              const SizedBox(height: 45.41,),
              Text(
                "Congratulation!",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontSize: 42.21,
                  fontWeight: FontWeight.w700,
                )
              ),
              Text(
                'Your result is: ${GetIt.I.get<Questions>().score.toString()} / 10',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  fontSize: 30.15,
                  fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}