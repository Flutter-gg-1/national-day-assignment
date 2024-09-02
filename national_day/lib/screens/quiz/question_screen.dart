import 'package:flutter/material.dart';
import 'package:national_day/screens/quiz/question_vm.dart';
import 'answer_cell.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>
    with SingleTickerProviderStateMixin {
  late QuestionVM vm;

  @override
  void initState() {
    super.initState();
    vm = QuestionVM();
    vm.tabController = TabController(
      initialIndex: 0,
      length: vm.allQuestions.length,
      vsync: this,
    );
    setState(() {});
  }

  @override
  void dispose() {
    vm.tabController.dispose();
    super.dispose();
  }

  void _buttonClicked(BuildContext context) {
    vm.buttonClicked(context);
    setState(() {});
  }

  _indexChanged() {
    vm.indexChanged();
    setState(() {});
  }

  void setAnswer(String answerKey) {
    vm.setSelectedAnswer(answerKey);
    setState(() => ());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicator: BoxDecoration(
              border: Border.all(color: Colors.green), shape: BoxShape.circle),
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: vm.tabColor(),
          unselectedLabelColor: Colors.black,
          dividerHeight: 0,
          dividerColor: Colors.transparent,
          controller: vm.tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          onTap: (_) => _indexChanged(),
          tabs: List.generate(
            vm.allQuestions.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ).toList(),
        ),
      ),
      body: SafeArea(
        child: vm.allQuestions.isEmpty
            ? const Center(
                child:
                    CircularProgressIndicator()) // Show a loading indicator while data is loading
            : Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      controller: vm.tabController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: vm.allQuestions.map((question) {
                        return Padding(
                          padding: const EdgeInsets.all(32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                question.question,
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              InkWell(
                                onTap: () => setAnswer('A'),
                                child: AnswerCell(
                                  answerKey: 'A',
                                  answerValue: question.a,
                                  answerNumber: '1',
                                  correctAnswer: question.answer,
                                  didAnswer: vm.highlightCell('A'),
                                ),
                              ),
                              InkWell(
                                  onTap: () => setAnswer('B'),
                                  child: AnswerCell(
                                    answerKey: 'B',
                                    answerValue: question.b,
                                    answerNumber: '2',
                                    correctAnswer: question.answer,
                                    didAnswer: vm.highlightCell('B'),
                                  )),
                              InkWell(
                                  onTap: () => setAnswer('C'),
                                  child: AnswerCell(
                                    answerKey: 'C',
                                    answerValue: question.c,
                                    answerNumber: '3',
                                    correctAnswer: question.answer,
                                    didAnswer: vm.highlightCell('C'),
                                  )),
                              InkWell(
                                  onTap: () => setAnswer('D'),
                                  child: AnswerCell(
                                    answerKey: 'D',
                                    answerValue: question.d,
                                    answerNumber: '4',
                                    correctAnswer: question.answer,
                                    didAnswer: vm.highlightCell('D'),
                                  )),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 40),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onPressed: () => _buttonClicked(context),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  vm.buttonText(),
                                  style: const TextStyle(fontSize: 18),
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
