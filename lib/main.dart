import 'package:flutter/material.dart';
import 'package:saudi_assignment/screens/home_screen.dart';
import 'package:saudi_assignment/services/setup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
    );
  }
}