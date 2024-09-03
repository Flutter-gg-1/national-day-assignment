class QuestionModel {
  late final String question;
  late final String a;
  late final String b;
  late final String c;
  late final String d;
  late final String answer;

  QuestionModel(
      {required this.question,
      required this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.answer});

  QuestionModel.fromJson(
    Map<String, dynamic> json,
  ) {
    question = json['question'];
    a = json['A'];
    b = json['B'];
    c = json['C'];
    d = json['D'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['question'] = question;
    data['A'] = a;
    data['B'] = b;
    data['C'] = c;
    data['D'] = d;
    data['answer'] = answer;
    return data;
  }
}
