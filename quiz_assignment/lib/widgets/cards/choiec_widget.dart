import 'package:flutter/material.dart';

class ChoiecWidget extends StatelessWidget {
  const ChoiecWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 38.74,
        width: 314,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.16)),
            boxShadow: const [
              BoxShadow(
                color: Color(0xffC9FBB1),
                offset: Offset(2, 2),
              )
            ],
            color: Colors.white,
            border: Border.all(color: const Color(0xffC9FBB1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Jeddah",
              style: TextStyle(fontSize: 11),
            ),
            Container(
                alignment: Alignment.center,
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(3.26)),
                    color: Colors.white,
                    border: Border.all(color: const Color(0xffC9FBB1))),
                child: const Text("1",
                    style: TextStyle(fontSize: 11, color: Color(0xffC9FBB1))))
          ],
        ));
  }
}
