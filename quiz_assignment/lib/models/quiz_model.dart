class QuizModel {
  late final String question;
  late final String a;
  late final String b;
  late final String c;
  late final String d;
  late final String answer;

  QuizModel(
      {required this.question,
      required this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.answer});

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
        question: json['question'],
        a: json['A'],
        b: json['B'],
        c: json['C'],
        d: json['D'],
        answer: json['answer']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['question'] = question;
    data['A'] = a;
    data['B'] = b;
    data['C'] = c;
    data['D'] = d;
    data['answer'] = answer;
    return data;
  }
}
