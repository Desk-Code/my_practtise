import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.green,
  Colors.red,
];

class CrossColor {
  static Color colorChangeData(int index) {
    if (index % 2 == 0) {
      return colors[0];
    } else {
      Color temp = colors[0];
      colors[0] = colors[1];
      colors[1] = temp;
      return colors[0];
    }
  }
}
