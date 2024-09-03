import 'package:flutter/material.dart';
import 'package:national_day/data_layer/qs_data_layer.dart';
import 'package:national_day/servers/setub.dart';
import '../../core/all_file.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
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
              textQuestion: getIt.get<QsDataLayer>().qsList[1].question,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[1].a,
              textNumber: 1,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[1].b,
              textNumber: 2,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[1].c,
              textNumber: 3,
            ),
            MyQsContainer(
              onTap: () {},
              color: color,
              textQuestion: getIt.get<QsDataLayer>().qsList[1].d,
              textNumber: 4,
            ),
            SizedBox(height: context.getScreenWidth(multiply: 0.1)),
            MyButton(
                text: 'Continue',
                onPressed: () {
                  context.goTo(const PageThree());
                }),
          ],
        ),
      ),
    );
  }
}
