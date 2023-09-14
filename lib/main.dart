import 'package:flutter/material.dart';
import 'package:my_practtise/data_passing_example/data_passing1.dart';
import 'package:my_practtise/navigation_example/second_screen.dart';
import 'package:my_practtise/navigation_example/third_screen.dart';

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
      home: const DataPassing1(),
      initialRoute: '/',
      routes: {
        '/secondScreen': (context) => const SecondScreenPage(),
        '/thirdScreen': (context) => const ThirdScreenPage(),
      },
    );
  }
}
