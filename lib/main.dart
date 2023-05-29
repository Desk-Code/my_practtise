import 'package:flutter/material.dart';
import 'package:my_practtise/practise/gmail/gmail_drawer_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GmailDrawerPage(),
    );
  }
}
