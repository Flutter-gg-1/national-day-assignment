import 'package:flutter/material.dart';
import 'package:national_day/core/all_file.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text('Hello World!'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
