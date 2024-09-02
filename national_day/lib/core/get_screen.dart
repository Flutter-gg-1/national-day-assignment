import 'package:flutter/material.dart';

extension GetScreen on BuildContext {
  getScreenWidth({double? multiply}) {
    return MediaQuery.of(this).size.width * multiply!;
  }
}