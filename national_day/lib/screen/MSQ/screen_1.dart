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
          children: getIt.get<QsDataLayer>().qsList.map(
            (e) {
              return MyQsContainer(
                textQuestion: e.question, textNumber: '1',
              );
            }
          ).toList(),

          // SizedBox(height: context.getScreenWidth(multiply: 0.1)),
          // MyButton(
          //     text: 'Continue',
          //     onPressed: () async {
          //       // print(QsDataLayer().qsList.first.question);
          //       // print(QsDataLayer().qsList.first.d);
          //     }),
          
        ),
      ),
    );
  }
}
