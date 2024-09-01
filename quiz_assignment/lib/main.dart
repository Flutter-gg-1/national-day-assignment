import 'package:flutter/material.dart';
import 'package:quiz_assignment/screens/start_screen.dart';
import 'package:quiz_assignment/services/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StartScreen());
  }
}
