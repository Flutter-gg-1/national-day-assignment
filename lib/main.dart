import 'package:flutter/material.dart';

import 'package:national_day/helper/setup.dart';
import 'package:national_day/objectbox.dart';
import 'package:national_day/screen/home_screen.dart';

late ObjectBox objectbox;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  objectbox = await ObjectBox.create();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
