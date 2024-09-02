import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            SizedBox(height: context.getScreenWidth(multiply: 0.1)),
            const MyButton(
              text: 'Let’s start',
            ),
          ],
        ),
      ),
    );
  }
}
