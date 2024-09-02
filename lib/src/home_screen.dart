import 'package:flutter/material.dart';
import 'package:quiz_app/extension/size_config.dart';
import 'package:quiz_app/widget/inkwell/inkwell_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: context.getHeight() * 0.2,
            ),
            const Text(
              'Explore',
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Text(
              'Saudi arabia !',
              style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C8D21)),
            ),
            const InkWellContainer()
          ],
        ),
      )),
    );
  }
}
