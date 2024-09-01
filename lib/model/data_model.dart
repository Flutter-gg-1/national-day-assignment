class DataModel {
  DataModel({
    required this.question,
    required this.A,
    required this.B,
    required this.C,
    required this.D,
    required this.answer,
    required this.id,
  });
  late final String question;
  late final String A;
  late final String B;
  late final String C;
  late final String D;
  late final String answer;
  late final int id;
  
  
  DataModel.fromJson(Map<String, dynamic> json){
    question = json['question'];
    A = json['A'];
    B = json['B'];
    C = json['C'];
    D = json['D'];
    answer = json['answer'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['question'] = question;
    data['A'] = A;
    data['B'] = B;
    data['C'] = C;
    data['D'] = D;
    data['answer'] = answer;
    data['id'] = id;
    return data;
  }
}