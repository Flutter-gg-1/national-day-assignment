import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_day/model/json_data.dart';
import 'package:national_day/src/winner_screen.dart';
import '../model/data_model.dart';

class QuestionData {
  List<DataModel> data = dataQ.map((e) => DataModel.fromJson(e)).toList();
  final box = GetStorage();
  int currentQIndex = 0;
  int level = 0;

  QuestionData() {
    loadData();
  }

  loadData() {
    if (box.hasData("currentAnswer")) {
      currentQIndex = box.read("currentAnswer");
    }else {
      currentQIndex = 0;
    }
    if (box.hasData("level")) {
      level = box.read("level");
    }
    else {
      level = 0;
  }
    }
  saveData() {
    box.write("currentAnswer", currentQIndex);
    box.write("level", level);
  }

  nextQuestion(BuildContext context) {
    if (currentQIndex < data.length - 1) {
      currentQIndex++;
      saveData();
    } else {
      box.erase();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Winner(level: level);
      }));
    }
  }
}