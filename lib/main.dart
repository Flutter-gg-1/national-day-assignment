import 'package:flutter/material.dart';
import 'package:nationalday/healper/healper.dart';
import 'package:nationalday/src/first_screan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FirstScrean());
  }
}
