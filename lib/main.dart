import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui6/ui6_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ui6Page(),
    );
  }
}
