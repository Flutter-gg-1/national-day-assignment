class DataModel {
  String question;
  String a;
  String b;
  String c;
  String d;
  String answer;

  DataModel({
    required this.question,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.answer,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        question: json["question"],
        a: json["A"],
        b: json["B"],
        c: json["C"],
        d: json["D"],
        answer: json["answer"],
      );

  Map<String, dynamic> toJson() => {
        "question": question,
        "A": a,
        "B": b,
        "C": c,
        "D": d,
        "answer": answer,
      };
}
