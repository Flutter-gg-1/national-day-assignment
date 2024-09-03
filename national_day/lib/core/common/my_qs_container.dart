import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class MyQsContainer extends StatelessWidget {
  const MyQsContainer(
      {super.key,
      required this.textQuestion,
      this.textNumber,
      this.color,
      this.onTap});

  final String textQuestion;
  final int? textNumber;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: textNumber == null ? null : onTap,
      child: Container(
        height: context.getScreenWidth(multiply: 0.17),
        width: context.getScreenWidth(multiply: 0.9),
        decoration: BoxDecoration(
          border: Border.all(color: color ?? MyColors.colorQuestion),
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
                    border: Border.all(
                      color: textNumber == null
                          ? Colors.transparent
                          : (color ?? MyColors.colorQuestion),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.transparent,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(textNumber.toString(),
                        style: TextStyle(
                            color: textNumber == null
                                ? Colors.transparent
                                : (color ?? MyColors.colorQuestion),
                            fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
