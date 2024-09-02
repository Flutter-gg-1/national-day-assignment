import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:national_day/data_layer/data_layer.dart';
import 'package:national_day/helper/nav.dart';
import 'package:national_day/screen/end_screen.dart';

import 'package:national_day/wdget/custom_text.dart';
import 'package:national_day/wdget/option.dart';

class QuastionScreen extends StatefulWidget {
  const QuastionScreen({super.key});

  @override
  State<QuastionScreen> createState() => _QuastionScreenState();
}

class _QuastionScreenState extends State<QuastionScreen> {
  var getit = GetIt.I.get<Datalayer>();
  bool active = true;
  bool pressedA = false;

  bool pressedB = false;

  bool pressedC = false;

  bool pressedD = false;

  @override
  void initState() {
    super.initState();
    getit.getQueastion();
    getit.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                text: getit.questions[getit.user.progress].question,
                color: Colors.black,
                size: 23.01),
            Option(
              active: active,
              pressed: pressedA,
              ans: getit.questions[getit.user.progress].A,
              index: "1",
              onPressed: () {
                if (getit.questions[getit.user.progress].answer == "A") {
                  ++getit.user.score;
                } else {
                  pressedA = !pressedA;
                }
                active = !active;
                setState(() {});
              },
            ),
            Option(
              active: active,
              pressed: pressedB,
              ans: getit.questions[getit.user.progress].B,
              index: "2",
              onPressed: () {
                if (getit.questions[getit.user.progress].answer == "B") {
                  ++getit.user.score;
                } else {
                  pressedB = !pressedB;
                }
                active = !active;
                setState(() {});
              },
            ),
            Option(
              active: active,
              pressed: pressedC,
              ans: getit.questions[getit.user.progress].C,
              index: "3",
              onPressed: () {
                if (getit.questions[getit.user.progress].answer == "C") {
                  ++getit.user.score;
                } else {
                  pressedC = !pressedC;
                }
                active = !active;
                setState(() {});
              },
            ),
            Option(
              active: active,
              pressed: pressedD,
              ans: getit.questions[getit.user.progress].D,
              index: "4",
              onPressed: () {
                if (getit.questions[getit.user.progress].answer == "D") {
                  ++getit.user.score;
                } else {
                  pressedD = !pressedD;
                }
                active = !active;
                setState(() {});
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ++getit.user.progress;
                  active = !active;
                  pressedD = false;
                  pressedC = false;
                  pressedB = false;
                  pressedA = false;
                  print("progress ${getit.user.progress}");
                  print("score: ${getit.user.score}");
                  getit.savedProgress();
                  if (getit.questions.length > getit.user.progress) {
                    setState(() {});
                  } else {
                    context.navTo(const EndScreen());
                  }
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
