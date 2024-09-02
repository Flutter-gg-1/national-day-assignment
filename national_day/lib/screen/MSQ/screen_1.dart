import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';
import 'package:national_day/data_layer/qs_data_layer.dart';
import 'package:national_day/servers/setub.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
              textQuestion: 'Question 1',
              textNumber: '1',
            ),
            SizedBox(height: context.getScreenWidth(multiply: 0.1)),
            MyButton(
                text: 'Continue',
                onPressed: () async{
                  await getIt.get<QsDataLayer>().saveData();
                  var data = getIt.get<QsDataLayer>().test();
                  print(data);
                }),
          ],
        ),
      ),
    );
  }
}
