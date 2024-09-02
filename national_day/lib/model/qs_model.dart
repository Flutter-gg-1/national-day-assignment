class QsModel {
  final String question;
  final String answer;
  final String a;
  final String b;
  final String c;
  final String d;
  final String correctAnswer;
  QsModel({
    required this.question,
    required this.answer,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.correctAnswer,
  });

  factory QsModel.fromJson(Map<String, dynamic> json) {
    return QsModel(
      question: json['question'],
      answer: json['answer'],
      a: json['a'],
      b: json['b'],
      c: json['c'],
      d: json['d'],
      correctAnswer: json['correctAnswer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answer': answer,
      'a': a,
      'b': b,
      'c': c,
      'd': d,
      'correctAnswer': correctAnswer,
    };
  }
}