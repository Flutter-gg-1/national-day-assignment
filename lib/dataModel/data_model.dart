class DataModel {
  DataModel({
    required this.question,
    required this.A,
    required this.B,
    required this.C,
    required this.D,
    required this.answer,
  });

  final String question;
  final String A;
  final String B;
  final String C;
  final String D;
  final String answer;

  DataModel.fromJson(Map<String, dynamic> json)
      : question = json['question'],
        A = json['A'],
        B = json['B'],
        C = json['C'],
        D = json['D'],
        answer = json['answer'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['question'] = question;
    data['A'] = A;
    data['B'] = B;
    data['C'] = C;
    data['D'] = D;
    data['answer'] = answer;
    return data;
  }
}
