import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:nationalday/datalayer/question_data.dart';
import 'package:nationalday/datalayer/user_data.dart';
import 'package:nationalday/src/home/questionList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late QuestionData data;

  @override
  void initState() {
    super.initState();
    data = GetIt.I.get<QuestionData>();
    data.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff204529),
      appBar: AppBar(
        backgroundColor: const Color(0xff00473e),
        title: const Text('اليوم الوطني السعودي'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              data.saveAnswer();
            },
            icon: const Icon(Icons.save, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'عدد الإجابات الصحيحة',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                (GetIt.I.get<UserData>().myUser.rightQuestions != null
                        ? GetIt.I.get<UserData>().myUser.rightQuestions!.length
                        : 0)
                    .toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              QuestionList(
                  data: data,
                  onUpdateScore: () {
                    setState(() {});
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
