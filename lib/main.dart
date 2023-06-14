import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/tic_toe_tac/tic_toe_tac_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TicToetacPage(),
    );
  }
}
