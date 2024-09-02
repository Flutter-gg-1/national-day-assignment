import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key, this.onContinue});
  final Function()? onContinue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff1C8D21),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            fixedSize: const Size(201, 60)),
        onPressed: onContinue,
        child: const Text(
          "Continue",
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
