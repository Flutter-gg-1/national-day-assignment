class QustModel {
  String question;
  String a;
  String b;
  String c;
  String d;
  String answer;

  QustModel({required  this.question,required this.a,required this.b,required this.c,required this.d,required this.answer});

   factory QustModel.fromJson(Map<String, dynamic> json) {
   return QustModel(
     question :json['question'],
    a : json['A'],
    b : json['B'],
    c : json['C'],
    d : json['D'],
    answer : json['answer'],
   );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  {};
    data['question'] = question;
    data['A'] = a;
    data['B'] = b;
    data['C'] = c;
    data['D'] = d;
    data['answer'] = answer;
    return data;
  }
}