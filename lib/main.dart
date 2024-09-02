import 'package:flutter/material.dart';
import 'package:quiz_app/services/setup.dart';
import 'package:quiz_app/src/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home:  const HomeScreen(),
    );
  }
}
