import 'package:flutter/material.dart';
import 'package:national_day/buttons/home_button.dart';
import 'package:national_day/extension/nav.dart';
import 'package:national_day/screen/qusetions_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset("assets/Flag_of_Saudi_Arabia.svg-3.png", width: 200,),
            const Text(
              "Explore",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Text(
              "Saudi arabia !",
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C8D21)),
            ),
            const SizedBox(
              height: 80,
            ),
            HomeButton(
              onPressed: () {
                context.push(screen: const QuestionsScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
