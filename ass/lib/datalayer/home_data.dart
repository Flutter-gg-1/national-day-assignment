import 'package:ass/model/question_model.dart';
import 'package:ass/screen/winner_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class QuestionData {
  List<DataModel> data = [];
  int currentQIndex = 0;
  int level = 0;

  void loadData() async {
    // Simulate loading data, replace this with your actual data loading logic
    await Future.delayed(Duration(seconds: 2)); // Simulating network delay

    data = [
      // Initialize with sample data or load from a file/database
      DataModel(
        question: "What is the capital city of Saudi Arabia?",
        A: "Jeddah",
        B: "Riyadh",
        C: "Dammam",
        D: "Mecca",
        answer: "B",
       
      ),
      // Add more DataModel instances here
    ];

    // Handle case where data is empty
    if (data.isEmpty) {
      throw Exception("No questions available");
    }
  }

  void loadProgress() {
    final storage = GetStorage();
    level = storage.read('level') ?? 0;
    currentQIndex = storage.read('currentQIndex') ?? 0;

    // Handle cases where the indices are out of range
    if (currentQIndex >= data.length) {
      currentQIndex = data.length - 1;
    }
  }

  void nextQuestion(BuildContext context) {
    if (currentQIndex < data.length - 1) {
      currentQIndex++;
      // Save progress
      final storage = GetStorage();
      storage.write('level', level);
      storage.write('currentQIndex', currentQIndex);
    } else {
      // Navigate to winner screen or handle completion
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => const Winner()),
      // );
    }
  }
}
