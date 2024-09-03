import 'package:flutter/material.dart';
import 'package:national_day/src/data_layer/questions_data.dart';

import '../models/questions_model.dart';
import '../services/setup_service.dart';
import '../widgets/answer_button.dart';
import 'result_screen.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // Access the QuestionsData using dependency injection.
  final questionsData = getIt<QuestionsData>();
  
  // List to hold the quiz questions.
  List<QuestionModel> questions = [];
  
  // Index to track the current question.
  int currentQuestionIndex = 0;
  
  // Variable to keep track of the user's score.
  int score = 0;

  @override
  void initState() {
    super.initState();
    // Load the questions when the screen initializes.
    questions = questionsData.getQuestions();
  }

  // Function to check the selected answer.
  void checkAnswer(String selectedAnswer) {
    // If the selected answer is correct, increment the score.
    if (selectedAnswer == questions[currentQuestionIndex].answer) {
      score++;
    }

    // Update the state to move to the next question or show the result screen.
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        // Move to the next question.
        currentQuestionIndex++;
      } else {
        // Navigate to the result screen when all questions are answered.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(score: score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display the current question.
            Text(
              questions[currentQuestionIndex].question!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Display the answer options as buttons.
            AnswerButton(
              answer: questions[currentQuestionIndex].A!,
              onPressed: () => checkAnswer('A'),
            ),
            AnswerButton(
              answer: questions[currentQuestionIndex].B!,
              onPressed: () => checkAnswer('B'),
            ),
            AnswerButton(
              answer: questions[currentQuestionIndex].C!,
              onPressed: () => checkAnswer('C'),
            ),
            AnswerButton(
              answer: questions[currentQuestionIndex].D!,
              onPressed: () => checkAnswer('D'),
            ),
          ],
        ),
      ),
    );
  }
}
