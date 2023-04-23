import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui4/ui4_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ui4Page(),
    );
  }
}
