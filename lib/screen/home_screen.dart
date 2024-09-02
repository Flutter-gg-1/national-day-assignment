import 'package:flutter/material.dart';
import 'package:national_day/helper/nav.dart';
import 'package:national_day/helper/screen.dart';
import 'package:national_day/screen/quastion_screen.dart';
import 'package:national_day/wdget/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                color: Colors.black,
                text: "Explore",
                size: 42.21,
              ),
              const CustomText(
                color: Color(0xff1C8D21),
                text: "Saudi arabia !",
                size: 42.21,
              ),
              Container(
                height: context.getHight(value: .1),
                width: context.getWidth(value: .7),
                decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.white, Colors.green]),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                    
                      context.navTo(const QuastionScreen());
                    },
                    child: const Text("Let’s start")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
