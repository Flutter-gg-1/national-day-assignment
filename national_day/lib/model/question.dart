class Question {
  String question;
  String a;
  String b;
  String c;
  String d;
  String answer;

  Question({
    required this.question,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.answer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    final question = json['question'] as String;
    final a = json['A'] as String;
    final b = json['B'] as String;
    final c = json['C'] as String;
    final d = json['D'] as String;
    final answer = json['answer'] as String;
    return Question(question: question, a: a, b: b, c: c, d: d, answer: answer);
  }

  Map<String, dynamic> toJson() =>
      {'question': question, 'A': a, 'B': b, 'C': c, 'D': d, 'answer': answer};
}
