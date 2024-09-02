import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saudi_assignment/data/questions.dart';

class ViewQuestion extends StatelessWidget {
  // final String question;
  const ViewQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      GetIt.I.get<Questions>().getCurrentQuestion().question,
      textAlign: TextAlign.center,
      style: GoogleFonts.dmSans(fontSize: 23.01,fontWeight: FontWeight.w700)
    );
  }
}