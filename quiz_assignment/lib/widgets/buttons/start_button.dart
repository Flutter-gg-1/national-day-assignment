import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff1C8D21),
              Colors.white,
            ],
          )),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              foregroundColor: Colors.black,
              fixedSize: const Size(250, 80),
              shape: const BeveledRectangleBorder()),
          onPressed: onPressed,
          child: Text(text,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    );
  }
}
