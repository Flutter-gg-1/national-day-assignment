import 'package:flutter/material.dart';

extension ShowScreen on BuildContext {
  goTo(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => screen));
  }
}