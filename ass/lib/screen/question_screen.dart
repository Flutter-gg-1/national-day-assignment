import 'package:ass/model/json_data.dart';
import 'package:ass/model/question_model.dart';
import 'package:ass/screen/winner_screen.dart';
import 'package:ass/wedget/custom_answeres_elevated_button.dart';
import 'package:ass/wedget/custom_elevated_button.dart';
import 'package:ass/wedget/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final GetStorage _storage = GetStorage();
  int _currentIndex = 0;
  List<DataModel> _questions = [];
  String? _selectedAnswer;
  bool? _isAnswerCorrect;

  @override
  void initState() {
    super.initState();
    _loadQuestions();
    _currentIndex = _storage.read('currentQuestionIndex') ?? 0;
  }

  void _loadQuestions() {
    _questions = dataQ.map((q) => DataModel.fromJson(q)).toList();
  }

  void _selectAnswer(String selectedAnswer) {
    setState(() {
      _selectedAnswer = selectedAnswer;
      _isAnswerCorrect = _selectedAnswer == _questions[_currentIndex].answer;
    });
  }

  void _checkAnswer() {
    if (_isAnswerCorrect == true) {
      setState(() {
        _currentIndex++;
        if (_currentIndex >= _questions.length) {
          _storage.erase(); // Clear storage on completion
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Winner()),
          );
        } else {
          _storage.write('currentQuestionIndex', _currentIndex);
        }
        _selectedAnswer = null; // Reset for the next question
        _isAnswerCorrect = null; // Reset correctness state
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please select the correct answer to continue.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Redirect to Winner screen if no questions are available
    if (_questions.isEmpty || _currentIndex >= _questions.length) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Winner()),
        );
      });
      return const SizedBox
          .shrink(); // Avoid rendering anything during redirection
    }

    final currentQuestion = _questions[_currentIndex];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: currentQuestion.question,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 45),
              _buildAnswerButton(currentQuestion.A, "A"),
              const SizedBox(height: 15),
              _buildAnswerButton(currentQuestion.B, "B"),
              const SizedBox(height: 15),
              _buildAnswerButton(currentQuestion.C, "C"),
              const SizedBox(height: 15),
              _buildAnswerButton(currentQuestion.D, "D"),
              const SizedBox(height: 70),
              CustomElevatedButton(
                backgroundColors: [
                  const Color(0xff1C8D21),
                  const Color(0xff1C8D21),
                ],
                text: "Continue",
                fontSize: 23,
                fontWeight: FontWeight.bold,
                textcolor: Colors.white,
                onPressed: _isAnswerCorrect == true ? _checkAnswer : null,
                height: 80,
                width: 201,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerButton(String answerText, String answerKey) {
    bool isSelected = _selectedAnswer == answerKey;
    bool isCorrect = _questions[_currentIndex].answer == answerKey;

    return CustomAnsweresElevatedButton(
      answerText: answerText,
      number: answerKey,
      onPressed: () => _selectAnswer(answerKey),
      isSelected: isSelected,
      isCorrect: _selectedAnswer != null && isCorrect,
      isIncorrect: _selectedAnswer != null && !isCorrect && isSelected,
    );
  }
}
