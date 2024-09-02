import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class MyQsContainer extends StatelessWidget {
  const MyQsContainer({super.key, required this.textQuestion, required this.textNumber, required this.color});

  final String textQuestion;
  final String textNumber;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getScreenWidth(multiply: 0.17),
      width: context.getScreenWidth(multiply: 0.9),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.transparent,
      ),
      child: Card(
        elevation: 5,
        shadowColor: color,
        child: ListTile(
          title: Text(textQuestion),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: context.getScreenWidth(multiply: 0.1),
                width: context.getScreenWidth(multiply: 0.1),
                decoration: BoxDecoration(
                  border: Border.all(color: color),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child:
                      Text(textNumber, style: TextStyle(color: color, fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
