import 'package:flutter/material.dart';

import '../../core/all_file.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

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
                context.goTo(const PageFour());
              },
              text: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
