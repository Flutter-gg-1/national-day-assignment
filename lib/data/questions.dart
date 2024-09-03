import 'dart:ui';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:saudi_assignment/models/question.dart';

// data
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
  
  final List<Question> questions = []; // list of questions as type 'Question'
  late int? index;                      // used to indicate current question index
  late int score;                      // used to indicate current score
  List<Color> choicesColors = [];      // list of choices border colors, used when showing and clicking a choice
  List<String> choicesLabels = ['A', 'B', 'C', 'D']; // used to indicate possible choices
  bool isClicked = false;              // triggered when user clicks on a choice

  // constructor, initialize necessary values
  Questions(){
    box.erase();
    loadQuestions();
    loadIndex();
    loadScore();
    loadIsClicked();
    loadchoicesColors();
    if(questions.isNotEmpty && questions.length==10) {
      log('questions added');
    }
  }

  final box = GetStorage();

  // function to load questions and convert it to list of 'Question'
  loadQuestions(){
    if(box.hasData('questions')) {
      List<dynamic> tempBox = box.read('questions');
      log(tempBox.runtimeType.toString());
      List<Map<String,dynamic>> tempList = List.from(tempBox).cast<Map<String,dynamic>>();
      log(tempList.runtimeType.toString());
      for(var q in tempList) {
        questions.add(Question.fromJson(q));
      }
    }
    else {
      for(var q in dataQ) {
        questions.add(Question.fromJson(q));
        box.write('questions', questions);
      }
      log(box.hasData('questions').toString());
    }
  }

  // function to load index of current question
  loadIndex() {
    if(box.hasData('index')) {
      index = box.read('index');
    }
    else {
      index = null;
    }
  }

  // function to load score of current question
  loadScore() {
    if(box.hasData('score')) {
      score = box.read('score');
    }
    else {
      score = 0;
    }
  }

  // funciton to load question state, is answered or not
  loadIsClicked() {
    if(box.hasData('isClicked')) {
      isClicked = box.read('isClicked');
    }
    else {
      isClicked = false;
    }
  }

  // function to load colors of border of current choices
  loadchoicesColors() {
    // if(box.hasData('colors')) {
    //   choicesColors = box.read('colors');
    // }
    // else {
      choicesColors = List.generate(getCurrentChoices().length, (index){return const Color(0xffc9fbb1);});
    }

  // function to compare user choice with the correct answer
  void checkAnswer(int choice) {
    if(getCurrentQuestion().answer == choicesLabels[choice]) {
      choicesColors[choice] = const Color(0xff1c8d21); // replace the border color with green
      score+=1; // increase score
    }
    else {
      choicesColors[choice] = const Color(0xfff0676f);
    }
    box.write('index', index);
    box.write('score', score);
    box.write('isClicked', true);
  }

  // function to get currently displayed question
  Question getCurrentQuestion() {
    if(index!=null) {
      return questions[index!];
    }
    else {
      return questions.first;
    }
  }

  // function to get currently displayed choices as list
  List<String> getCurrentChoices() {
    if(index!=null) {
      return [questions[index!].A, questions[index!].B, questions[index!].C, questions[index!].D];
    }
    else {
      return [questions.first.A, questions.first.B, questions.first.C, questions.first.D];
    }
  }

  // function to be called when pressing continue to check if end of list is reached.
  bool isDone() {
    // if it's last question, then there is no next question
    if(index==questions.length-1) {
      index = null;
      box.write('index', index);
      return true;
    }

    // else, reset all necessary values and increase index to move to next question
    else {
      isClicked = false;
      choicesColors = List.generate(getCurrentChoices().length, (index){return const Color(0xffc9fbb1);});
      index = index! + 1;
      box.write('index', index);
      box.write('isClicked', isClicked);
      return false;
    }
  }
}