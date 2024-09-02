

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nationalday/datalayer/question_data.dart';
import 'package:nationalday/src/home/AnswerButton.dart';


class QuestionList extends StatelessWidget {
  final QuestionData data;
  final VoidCallback onUpdateScore;

  const QuestionList(
      {super.key, required this.data, required this.onUpdateScore});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.dataQuestion?.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            color: const Color(0xff00796b), 
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.dataQuestion![index].question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  AnswerButton(
                    label: data.dataQuestion![index].A,
                    onTap: () {
                      data.checkAnswer(select: "A", index: index);
                      onUpdateScore(); 
                    },
                  ),
                  AnswerButton(
                    label: data.dataQuestion![index].B,
                    onTap: () {
                      data.checkAnswer(select: "B", index: index);
                      onUpdateScore(); 
                    },
                  ),
                  AnswerButton(
                    label: data.dataQuestion![index].C,
                    onTap: () {
                      data.checkAnswer(select: "C", index: index);
                      onUpdateScore(); 
                    },
                  ),
                  AnswerButton(
                    label: data.dataQuestion![index].D,
                    onTap: () {
                      data.checkAnswer(select: "D", index: index);
                      onUpdateScore(); 
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}