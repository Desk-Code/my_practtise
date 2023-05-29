import 'package:flutter/material.dart';

class PractisePage extends StatelessWidget {
  const PractisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(100, (index) => Text("data $index")),
        ],
      ),
    );
  }
}
