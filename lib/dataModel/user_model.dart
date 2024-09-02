import 'package:nationalday/dataModel/data_model.dart';

class UserModel {
  int id;
  String name;
  int score;
  List<DataModel>? rightQuestions;

  UserModel({
    required this.id,
    required this.name,
    this.score = 0, 
    this.rightQuestions,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      score: json['score'] ?? 0, 
      rightQuestions: json['rightQuestions'] != null
          ? List<DataModel>.from(
              json['rightQuestions'].map((x) => DataModel.fromJson(x)))
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'score': score,
      'rightQuestions': rightQuestions?.map((x) => x.toJson()).toList(),
    };
  }
}
