class QsModel {
  final String question;
  final String answer;
  final String a;
  final String b;
  final String c;
  final String d;
  QsModel({
    required this.question,
    required this.answer,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  factory QsModel.fromJson(Map<String, dynamic> json) {
    return QsModel(
      question: json['question'],
      answer: json['answer'],
      a: json['A'],
      b: json['B'],
      c: json['C'],
      d: json['D'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answer': answer,
      'A': a,
      'B': b,
      'C': c,
      'D': d,
    };
  }
}
