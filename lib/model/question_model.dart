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

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      question: json['question'],
      optionA: json['A'],
      optionB: json['B'],
      optionC: json['C'],
      optionD: json['D'],
      answer: json['answer'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question'] = question;
    data['A'] = optionA;
    data['B'] = optionB;
    data['C'] = optionC;
    data['D'] = optionD;
    data['answer'] = answer;
    return data;
  }
}
