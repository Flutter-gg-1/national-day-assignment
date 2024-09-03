import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({super.key, required this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 305,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
              colors: [Colors.white, Color(0xff1C8D21)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          fixedSize: const Size(305, 100),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: const Text(
          "Let's start",
          style: TextStyle(
              fontSize: 42, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
