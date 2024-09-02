import 'package:flutter/material.dart';
import 'package:national_day/screens/landing/landing_screen.dart';
import 'package:national_day/services/di_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DIContainer.setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: LandingScreen());
  }
}
