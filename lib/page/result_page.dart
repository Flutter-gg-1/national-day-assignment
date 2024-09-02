
import 'package:flutter/material.dart';

import 'package:national_day/data_handle/gitt.dart';
import 'package:national_day/data_handle/models/app_model.dart';
import 'package:national_day/page/home_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.ans});

  final int ans;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 5),
        () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              getIt.get<AppModel>().box.erase();
              getIt.get<AppModel>().userAnsList = [];
              getIt.get<AppModel>().curnetQusPage = 0;

              return const HomePage();
            },
          ));
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("asset/img/Group 6.png")),
          Image.asset("asset/img/23658184_4conf 2.png"),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/img/1.jpg",
                  width: 160,
                  height: 140,
                ),
                const Text(
                  "Congratulation!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
                ),
                Text(
                  "Your result is: ${widget.ans}/10",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
