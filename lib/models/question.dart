class Question {
  final String question;
  final String A;
  final String B;
  final String C;
  final String D;
  final String answer;

  Question({required this.question, required this.A, required this.B, required this.C, required this.D, required this.answer});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(question: json['question'], A: json['A'], B: json['B'], C: json['C'], D: json['D'], answer: json['answer']);
  }

  Map<String, dynamic> toJson() {
    return {
      'question' : question,
      'A' : A,
      'B' : B,
      'C' : C,
      'D' : D,
      'answer' : answer
    };
  }
}