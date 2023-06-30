import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/palidrome_number_checker/palidrome_number_checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PalidromeNumberChecker(),
    );
  }
}
