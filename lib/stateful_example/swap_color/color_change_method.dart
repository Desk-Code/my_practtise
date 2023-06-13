import 'package:flutter/material.dart';

List<Color> boxColor = [
  Colors.black,
  Colors.indigo,
  Colors.purple,
  Colors.red,
  Colors.deepPurple,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.lightBlue,
];

class ColorMagic {
  static int? firstSelectedIndex;
  static int? secondSelectedIndex;
  static void colorChange(int index) {
    if (firstSelectedIndex == null) {
      firstSelectedIndex = index;
    } else {
      secondSelectedIndex = index;
    }
    if (firstSelectedIndex != null && secondSelectedIndex != null) {
      Color temp = boxColor[firstSelectedIndex!];
      boxColor[firstSelectedIndex!] = boxColor[secondSelectedIndex!];
      boxColor[secondSelectedIndex!] = temp;
      firstSelectedIndex = null;
      secondSelectedIndex = null;
    }
  }
}
