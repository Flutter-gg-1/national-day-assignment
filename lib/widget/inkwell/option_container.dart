import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  final String option;
  final String value;
  final int optionNumber;
  final String? selctedanswer;
  final Function(String)? onTap;
  final bool? isCorrect;
  const OptionContainer({
    super.key,
    required this.option,
    required this.value,
    required this.optionNumber,
    this.selctedanswer,
    this.onTap,
    this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    Color color;
    if (selctedanswer == null) {
      color = const Color(0xffC9FBB1);
    } else if (selctedanswer == value) {
      color = isCorrect! ? const Color(0xff1C8D21) : Colors.red;
    } else {
      color = Colors.blue;
    }
    return InkWell(
      onTap: onTap!(value),
      child: Container(
        margin: const EdgeInsets.only(left: 38, right: 38, top: 16),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border(
              top: BorderSide(color: color),
              left: BorderSide(color: color),
              bottom: BorderSide(color: color, width: 4),
              right: BorderSide(
                color: color,
              ),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
            Container(
              alignment: Alignment.center,
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border:
                      Border.all(color: color)),
              child: Text(
                '$optionNumber',
                style: TextStyle(color: color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
