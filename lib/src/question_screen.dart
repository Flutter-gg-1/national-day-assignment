import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';
import 'package:quiz_app/widget/inkwell/option_container.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: context.getHeight() * 0.1,
            ),
            const Text(
              'What is the capital city of Saudi Arabia?',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),

            SizedBox(
              height: context.getHeight() * 0.06,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: Size(
                        context.getWidth() * 0.4, context.getHeight() * 0.07),
                    backgroundColor: const Color(0xff1C8D21)),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ))
          ],
        ),
      )),
    );
  }
}
