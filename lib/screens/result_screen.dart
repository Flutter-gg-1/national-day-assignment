import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudi_assignment/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You Got"),
            Text('${GetIt.I.get<Questions>().score.toString()}/10')
          ],
        ),
      ),
    );
  }
}