import 'package:flutter/material.dart';
import 'package:national_day/screens/quiz/question_vm.dart';
import 'package:national_day/screens/result/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final vm = QuestionVM();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    await vm.loadQuestions();
    setState(() {});
  }

  _navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ResultScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(
                child: vm.questions.isEmpty
                    ? const CircularProgressIndicator() // Show a loading indicator while data is loading
                    : Text(vm.questions.length.toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
