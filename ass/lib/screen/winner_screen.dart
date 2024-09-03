import 'package:ass/wedget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Winner extends StatelessWidget {
  const Winner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 200,
            left: 150,
            child: SizedBox(
                height: 150, child: Image.asset("assets/Picture1.png")),
          ),
          Lottie.asset("assets/Animation - 1725215633421.json"),
          const Positioned(
              top: 420,
              left: 50,
              child: CustomText(
                text: "Congratulation!",
                fontSize: 42,
                fontWeight: FontWeight.bold,
              )),
          const Positioned(
              top: 480,
              left: 85,
              child: CustomText(
                text: "Your result is: 10 /10",
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          Positioned(
              top: 430,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/Group 6.png",
                    fit: BoxFit.contain,
                  )))
        ],
      ),
    );
  }
}
