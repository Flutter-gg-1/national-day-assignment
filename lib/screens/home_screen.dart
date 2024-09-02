import 'package:flutter/material.dart';
import 'package:national_day_quiz/screens/question_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Explore',
              style: TextStyle(fontSize: 42.21, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Saudi Arabia !',
              style: TextStyle(
                  fontSize: 42.21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C8D21)),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
                height: 100,
                width: 305,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        stops: [0, 1],
                        colors: [Colors.white, Color(0xff1C8D21)]),
                    borderRadius: BorderRadius.circular(15)),
                child: Material(
                  type: MaterialType.transparency,
                  child: Center(
                    child: SizedBox.expand(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const QuestionScreen(index: 0,)));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Let\'s Start',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 42.21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
