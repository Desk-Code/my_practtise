import 'package:flutter/material.dart';
import 'package:my_practtise/bottom_navigationbar_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarDemo(),
    );
  }
}
