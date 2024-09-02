import 'dart:ui';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:saudi_assignment/models/question.dart';

  final dataQ = [
    {
      "question": "What is the capital city of Saudi Arabia?",
      "A": "Jeddah",
      "B": "Riyadh",
      "C": "Dammam",
      "D": "Mecca",
      "answer": "B"
    },
    {
      "question": "In which year was Saudi Arabia founded?",
      "A": "1902",
      "B": "1912",
      "C": "1932",
      "D": "1952",
      "answer": "C"
    },
    {
      "question": "Which desert covers most of Saudi Arabia?",
      "A": "Gobi Desert",
      "B": "Sahara Desert",
      "C": "Thar Desert",
      "D": "Rub' al Khali (Empty Quarter)",
      "answer": "D"
    },
    {
      "question": "What is the official language of Saudi Arabia?",
      "A": "Arabic",
      "B": "Urdu",
      "C": "English",
      "D": "Turkish",
      "answer": "A"
    },
    {
      "question": "What is the currency of Saudi Arabia?",
      "A": "Riyal",
      "B": "Dinar",
      "C": "Dirham",
      "D": "Pound",
      "answer": "A"
    },
    {
      "question": "What is the main religion practiced in Saudi Arabia?",
      "A": "Christianity",
      "B": "Hinduism",
      "C": "Islam",
      "D": "Buddhism",
      "answer": "C"
    },
    {
      "question":
          "Which holy city in Saudi Arabia do millions of Muslims visit annually?",
      "A": "Medina",
      "B": "Jeddah",
      "C": "Mecca",
      "D": "Taif",
      "answer": "C"
    },
    {
      "question":
          "Saudi Arabia is known for being the world's largest exporter of what resource?",
      "A": "Natural gas",
      "B": "Coal",
      "C": "Petroleum (Oil)",
      "D": "Gold",
      "answer": "C"
    },
    {
      "question":
          "Which Saudi Arabian city is known as the 'Gateway to the Two Holy Mosques'?",
      "A": "Jeddah",
      "B": "Riyadh",
      "C": "Medina",
      "D": "Mecca",
      "answer": "A"
    },
    {
      "question": "Which body of water lies to the west of Saudi Arabia?",
      "A": "Arabian Sea",
      "B": "Red Sea",
      "C": "Persian Gulf",
      "D": "Mediterranean Sea",
      "answer": "B"
    }
  ];
class Questions {
  
  final List<Question> questions = [];

  late int index;
  late int score;
  late List<Color> choicesColors;
  List<String> choicesLabels = ['A', 'B', 'C', 'D'];
  bool isClicked = false;

  Questions(){
    loadQuestions();
    index = 0;
    score = 0;
    choicesColors = List.generate(getCurrentChoices().length, (index){return const Color(0xffc9fbb1);});
    if(questions.isNotEmpty) {
      log('questions added');
    }
  }

  void checkAnswer(int choice) {
    if(getCurrentQuestion().answer == choicesLabels[choice]) {
      choicesColors[choice] = const Color(0xff1c8d21);
      score+=1;
      log("kfo $score");
    }
    else {
      choicesColors[choice] = const Color(0xfff0676f);
    }
  }

  loadQuestions(){
    for(var q in dataQ) {
      questions.add(Question.fromJson(q));
    }
  }

  Question getCurrentQuestion() {
    return questions[index];
  }

  List<String> getCurrentChoices() {
    return [questions[index].A, questions[index].B, questions[index].C, questions[index].D];
  }

  nextQuestion() {
    index+=1;
  }

  bool isDone() {
    if(index==9) {
      index = -1;
      return true;
    }
    else {
      isClicked = false;
      choicesColors = List.generate(getCurrentChoices().length, (index){return const Color(0xffc9fbb1);});
      nextQuestion();
      return false;
    }
  }
}