import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key,
      required this.option,
      required this.number,
      required this.onSelect,
      required this.color,
      required this.isDisabled});
  final String option;
  final String number;
  final Color color;
  final Function()? onSelect;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color,
            width: 2.0,
          ),
          boxShadow: [
            BoxShadow(
              color: color,
              offset: const Offset(4, 3),
            ),
          ],
        ),
        child: ElevatedButton(
            onPressed: isDisabled ? null : onSelect,
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(370, 50),
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  option,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: color,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(number),
                )
              ],
            )));
  }
}
