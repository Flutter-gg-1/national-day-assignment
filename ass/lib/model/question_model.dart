class DataModel {
  DataModel({
    required this.question,
    required this.A,
    required this.B,
    required this.C,
    required this.D,
    required this.answer,
  });
   String question;
   String A;
   String B;
   String C;
   String D;
   String answer;
   
 factory DataModel.fromJson(Map<String, dynamic> json){
  return DataModel(
    question:  json['question'],
    A : json['A'],
    B : json['B'],
    C : json['C'],
    D : json['D'],
    answer : json['answer'],
  );
  }

  Map<String, dynamic> toJson() {
    return{
    'question' : question,
    'A' : A,
    'B' : B,
    'C' : C,
    'D' : D,
    'answer' : answer,
    };
  }
}