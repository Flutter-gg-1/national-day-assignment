import 'package:flutter/material.dart';

class QustCardWidget extends StatelessWidget {
  const QustCardWidget({
    super.key, required this.tex, required this.qusNumber, required this.color,required this.onTap,
  });


  final String tex;
  final String qusNumber;

  final Color color;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap ,
      child: Container(
        width: 300,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border:  Border(
              left: BorderSide(color:color),
              top: BorderSide(color: color),
              right: BorderSide(color: color),
              bottom: BorderSide(width: 4, color: color),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                tex,
                style: const TextStyle(fontSize: 13),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: const Color(0xffC9FBB1))),
                child:  Center(
                    child: Text(
                  qusNumber,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffC9FBB1)),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
