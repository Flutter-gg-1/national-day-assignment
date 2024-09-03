import 'dart:math';

import 'package:flutter/material.dart';
import 'package:national_day/data_layer/qs_data_layer.dart';
import 'package:national_day/servers/setub.dart';
import '../../core/all_file.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    int index = Random().nextInt(10);
    Color? color;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyQsContainer(
              onTap: () {
                color = MyColors.colorAnswer;
              },
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[index].question,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[index].a,
              textNumber: 1,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[index].b,
              textNumber: 2,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[index].c,
              textNumber: 3,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[index].d,
              textNumber: 4,
            ),
            SizedBox(height: context.getScreenWidth(multiply: 0.1)),
            MyButton(
                text: 'Continue',
                onPressed: () {
                  context.goTo(const Congratulation());
                }),
          ],
        ),
      ),
    );
  }
}
