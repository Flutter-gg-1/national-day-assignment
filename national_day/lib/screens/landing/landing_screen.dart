import 'package:flutter/material.dart';
import 'package:national_day/screens/quiz/question_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  _navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => QuestionScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Explore', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 8),
              const Text('Saudi Arabia!', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => _navigate(context),
                child: const Text("Let's Start"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
