class QuestionModel {
  late final String question;
  late final String optionA;
  late final String optionB;
  late final String optionC;
  late final String optionD;
  late final String answer;

  QuestionModel(
      {required this.question,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD,
      required this.answer});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    optionA = json['optionA'];
    optionB = json['optionB'];
    optionC = json['optionC'];
    optionD = json['optionD'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question'] = question;
    data['optionA'] = optionA;
    data['optionB'] = optionB;
    data['optionC'] = optionC;
    data['optionD'] = optionD;
    data['answer'] = answer;
    return data;
  }
}
