import 'package:flutter/material.dart';
import 'package:national_day/helper/screen.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.ans,
    this.onPressed,
    required this.index,
    required this.pressed, required this.active,
  });
  final String ans;
  final void Function()? onPressed;
  final String index;
  final bool pressed;
  final bool active;
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xffC9FBB1);
    Color red = Colors.red;
    return Container(
      width: context.getHight(value: .4),
      decoration: BoxDecoration(
          border: Border.all(
            color: pressed ? red : green,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed:active ? onPressed : null,
              child: Align(alignment: Alignment.centerLeft, child: Text(ans))),
          Container(
            width: context.getHight(value: .04),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
                border: Border.all(
                  color: pressed ? red : green,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Center(child: Text(index)),
          )
        ],
      ),
    );
  }
}
