import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, required this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        fixedSize: const Size(200, 81),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: const Color(0xff1C8D21),
      ),
      onPressed: onPressed,
      child: const Text(
        "Continue",
        style: TextStyle(
            fontSize: 22.5, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
