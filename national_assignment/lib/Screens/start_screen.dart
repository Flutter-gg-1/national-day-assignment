import 'package:flutter/material.dart';
import 'package:national_assignment/Screens/qustions_screen.dart';
import 'package:national_assignment/helper/nav.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Explore",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
            ),
            Text(
              "Saudi arabia !",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  color: Colors.green),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 65,
                width: 230,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.green),
                    onPressed: () {
                      context.push(screen: QustionsScreen());
                    },
                    child: const Text(
                      "Let's start",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    )))
          ],
        ),
      ),
    );
  }
}
