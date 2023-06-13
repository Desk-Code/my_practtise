import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/cross_color_app/cross_color_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CrossColorDemo(),
    );
  }
}
