import 'package:flutter/material.dart';
import 'package:national_assignment/Screens/start_screen.dart';
import 'package:national_assignment/helper/init.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StartScreen());
  }
}
