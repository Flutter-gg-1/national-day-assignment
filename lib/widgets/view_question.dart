import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewQuestion extends StatelessWidget {
  final String question;
  const ViewQuestion({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: GoogleFonts.dmSans(fontSize: 23.01,fontWeight: FontWeight.w700)
      ),
    );
  }
}