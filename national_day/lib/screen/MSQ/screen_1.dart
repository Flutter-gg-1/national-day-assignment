import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyQsContainer(
              color: Colors.red,
              textQuestion: 'Question 1',
              textNumber: '1',
            ),
          ],
        ),
      ),
    );
  }
}
