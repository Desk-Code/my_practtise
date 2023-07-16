import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/animation_demo/my_custom_animation_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyCustomAnimationUI(),
    );
  }
}
