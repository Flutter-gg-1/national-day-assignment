
import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';

class GreenButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  const GreenButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          fixedSize: Size(context.getWidth() * 0.4, context.getHeight() * 0.07),
          backgroundColor: const Color(0xff1C8D21)),
      child:  Text(
        title,
        style: const TextStyle(fontSize: 23, color: Colors.white),
      ),
    );
  }
}
