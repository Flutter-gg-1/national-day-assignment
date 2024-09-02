import 'package:flutter/material.dart';

class ResultVM {
  Image bgImg(int score, int total) {
    double myScore = double.parse(score.toString());
    double myTotal = double.parse(total.toString());

    return myScore / myTotal <= 0.5
        ? Image.asset('assets/tryAgain.png')
        : Image.asset('assets/congrats.png');
  }

  String titleText(int score, int total) {
    double myScore = double.parse(score.toString());
    double myTotal = double.parse(total.toString());
    return myScore / myTotal <= 0.5 ? 'Ohh no!' : 'Congratulation!';
  }
}
