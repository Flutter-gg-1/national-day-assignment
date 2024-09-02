import 'package:flutter/material.dart';
import 'package:national_day_assignment/screens/questions_screen.dart';
import 'package:national_day_assignment/widgets/custome_home_content_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomHomeContent(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const QuestionScreen();
          }));
        },
      )),
    );
  }
}
