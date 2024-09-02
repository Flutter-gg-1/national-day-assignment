class SelectedAnswer {
  String question;
  String answer;

  SelectedAnswer({required this.question, required this.answer});

  factory SelectedAnswer.fromJson(Map<String, dynamic> json) {
    final question = json['question'] as String;
    final answer = json['answer'] as String;
    return SelectedAnswer(question: question, answer: answer);
  }

  Map<String, dynamic> toJson() => {'question': question, 'answer': answer};
}
