import 'package:flutter/material.dart';
import 'package:my_practtise/container_demo.dart';
import 'package:my_practtise/practise/container_rainbow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerDemo(),
    );
  }
}
