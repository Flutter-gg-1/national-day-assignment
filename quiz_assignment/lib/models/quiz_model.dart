class QuizModel {
  String? question;
  String? a;
  String? b;
  String? c;
  String? d;
  String? answer;

  QuizModel({this.question, this.a, this.b, this.c, this.d, this.answer});

  QuizModel.fromJson(Map<String, dynamic> json) {
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
