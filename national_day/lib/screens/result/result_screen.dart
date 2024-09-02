import 'package:flutter/material.dart';
import 'package:national_day/screens/landing/landing_screen.dart';
import 'package:national_day/screens/result/result_vm.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.score, required this.total});
  final int score;
  final int total;
  final vm = ResultVM();

  void _navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LandingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 3, child: vm.bgImg(score, total)),
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.green.shade200],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(vm.titleText(score, total),
                                style: TextStyle(fontSize: 40)),
                            Text(
                                'Your result is: ${score.toString()} / ${total.toString()}',
                                style: const TextStyle(fontSize: 24)),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
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
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                onPressed: () => _navigate(context),
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'Try Again',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
