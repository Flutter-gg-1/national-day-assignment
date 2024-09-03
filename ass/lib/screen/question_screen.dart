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
  bool _isAnswerCorrect = true;

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
    });
  }

  void _checkAnswer() {
    if (_currentIndex >= _questions.length) {
      return; 
    }

    String correctAnswer = _questions[_currentIndex].answer;
    setState(() {
      _isAnswerCorrect = _selectedAnswer == correctAnswer;
      if (_isAnswerCorrect) {
        _currentIndex++;
        if (_currentIndex >= _questions.length) {
          _storage.erase(); 
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Winner()),
          );
        } else {
          _storage.write('currentQuestionIndex', _currentIndex);
        }
        _selectedAnswer = null;
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty || _currentIndex >= _questions.length) {
      return Scaffold();
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
                  const Color(0xff1C8D21)
                ],
                text: "Continue",
                fontSize: 23,
                fontWeight: FontWeight.bold,
                textcolor: Colors.white,
                onPressed: _selectedAnswer != null ? _checkAnswer : null,
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
    return CustomAnsweresElevatedButton(
      answerText: answerText,
      number: answerKey,
      onPressed: () => _selectAnswer(answerKey),
      isSelected: _selectedAnswer == answerKey,
      isCorrect: _isAnswerCorrect || _selectedAnswer != answerKey,
    );
  }
}
