import 'package:flutter/material.dart';

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
              const Text("Explore", style: TextStyle(fontSize: 42.21, fontWeight: FontWeight.w700, color: Colors.black),),
              const Text("Saudi arabia !", style: TextStyle(fontSize: 42.21, fontWeight: FontWeight.w700, color: Color(0xff1c8d21)),),
              const SizedBox(height: 79,),
              Container(
                width: 305,
                height: 100,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(stops: [0.001,0.5],begin: Alignment.topLeft,colors: [Colors.white,Color(0xff1c8d21)]),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(
                  style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                  onPressed: (){},
                  child: const Text("Let's start", style: TextStyle(fontSize: 42.21, fontWeight: FontWeight.w700, color: Colors.black))
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}