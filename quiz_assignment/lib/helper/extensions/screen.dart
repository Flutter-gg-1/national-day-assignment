import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getheight() {
    MediaQuery.of(this).size.height;
  }

  getwidth() {
    MediaQuery.of(this).size.width;
  }
}
