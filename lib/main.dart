import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui11/ui11_drinks_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ui11HomePage(),
    );
  }
}
