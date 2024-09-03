class QuestionModel {
  String? question;
  String? A;
  String? B;
  String? C;
  String? D;
  String? answer;
  QuestionModel({
    required this.question,
    required this.A,
    required this.B,
    required this.C,
    required this.D,
    required this.answer,
  });
  QuestionModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    A = json['A'];
    B = json['B'];
    C = json['C'];
    D = json['D'];
    answer = json['answer'];
  }
}
