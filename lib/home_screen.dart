import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Explore',
              style: TextStyle(fontSize: 42.21, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Saudi Arabia !',
              style: TextStyle(
                  fontSize: 42.21,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C8D21)),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(15),
              child: Container(
                  height: 100,
                  width: 305,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          stops: [0, 1],
                          colors: [Colors.white, Color(0xff1C8D21)]),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Let\'s Start',
                      style: TextStyle(
                          fontSize: 42.21, fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
