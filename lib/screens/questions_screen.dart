import 'package:flutter/material.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

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
              child: const Center(
                child: Text(
                  'What is the capital city of Saudi Arabia?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: context.getHeight() / 17,
            ),
            GestureDetector(onTap: () {}, child: const CustomAnswerField()),
            SizedBox(
              height: context.getHeight() / 40,
            ),
            GestureDetector(onTap: () {}, child: const CustomAnswerField()),
            SizedBox(
              height: context.getHeight() / 40,
            ),
            GestureDetector(onTap: () {}, child: const CustomAnswerField()),
            SizedBox(
              height: context.getHeight() / 40,
            ),
            GestureDetector(onTap: () {}, child: const CustomAnswerField()),
            SizedBox(
              height: context.getHeight() / 14,
            ),
            Container(
              width: context.getWidth() / 2,
              height: context.getHeight() / 8,
              decoration: BoxDecoration(
                  color: const Color(0xff1C8D21),
                  borderRadius: BorderRadius.circular(17.33)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      )),
    );
  }
}

class CustomAnswerField extends StatelessWidget {
  const CustomAnswerField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() / 15,
      width: context.getWidth() / 1.3,
      decoration: BoxDecoration(
          border: const Border(
              left: BorderSide(
                color: Color(0xffC9FBB1),
                width: 1,
              ),
              top: BorderSide(
                color: Color(0xffC9FBB1),
                width: 1,
              ),
              right: BorderSide(
                color: Color(0xffC9FBB1),
                width: 4,
              ),
              bottom: BorderSide(
                color: Color(0xffC9FBB1),
                width: 4,
              )),
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(8.16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              'jeddah',
              style: TextStyle(fontSize: 13.46, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Container(
              width: context.getWidth() / 24,
              height: context.getHeight() / 37,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC9FBB1)),
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text('1'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
