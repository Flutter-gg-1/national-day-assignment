import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewQuestion extends StatelessWidget {
  final String question;
  const ViewQuestion({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      textAlign: TextAlign.center,
      style: GoogleFonts.dmSans(fontSize: 23.01,fontWeight: FontWeight.w700)
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:saudi_assignment/models/question.dart';

// class ViewQuestion extends StatelessWidget {
//   final Question question;
//   final Function()? oncc;
//   const ViewQuestion({super.key, required this.question, this.oncc});

//   @override
//   Widget build(BuildContext context) {
//     List<String> choices = [question.A, question.B, question.C, question.D];
//     return Column(
//       children: List.generate(4, (index){
//         return Column(
//           children: [
//             InkWell(
//               splashColor: Colors.transparent,
//               onTap: oncc,
//               child: Container(
//                 width: 312.78,
//                 height: 37.11,
//                 padding: const EdgeInsets.symmetric(horizontal: 15.9),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: const Color(0xffc9fbb1), width: 0.82),
//                   borderRadius: BorderRadius.circular(8.16),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(choices[index], style: TextStyle(fontSize: 8.16, fontWeight: FontWeight.w400,color: Colors.black),),
//                     Container(
//                       width: 16.31,
//                       height: 16.31,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(border: Border.all(color: const Color(0xffc9fbb1), width: 0.82),borderRadius: BorderRadius.circular(3.26)),
//                       child: Text((index+1).toString(), style: const TextStyle(fontSize: 8.16, fontWeight: FontWeight.w700,color: Color(0xffc9fbb1)),),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 15.26,)
//           ],
//         );
//       }),
//     );
//   }
// }