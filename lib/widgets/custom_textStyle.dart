import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextstyle {
  static TextStyle boldFontStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600);
  }

  static TextStyle grayFontStyle() {
    return const TextStyle(color: Colors.grey, fontSize: 18);
  }
}
