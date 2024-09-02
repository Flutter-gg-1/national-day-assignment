import 'package:flutter/material.dart';

class ChoiecWidget extends StatelessWidget {
  const ChoiecWidget(
      {super.key,
      required this.choiec,
      required this.number,
      this.onSelect,
      required this.value});
  final String choiec;
  final String number;
  final Function()? onSelect;
  final Color value;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 38.74,
          width: 314,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8.16)),
              boxShadow: [
                BoxShadow(
                  color: value,
                  offset: Offset(2, 2),
                )
              ],
              color: Colors.white,
              border: Border.all(color: value)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                choiec,
                style: const TextStyle(fontSize: 12),
              ),
              Container(
                  alignment: Alignment.center,
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(3.26)),
                      color: Colors.white,
                      border: Border.all(color: value)),
                  child: Text(number,
                      style: TextStyle(fontSize: 11, color: value)))
            ],
          )),
    );
  }
}
