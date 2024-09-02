import 'package:flutter/material.dart';
import '../../core/all_file.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            SizedBox(height: context.getScreenWidth(multiply: 0.1)),
            MyButton(
              onPressed: () {
                context.goTo(const PageThree());
              },
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}