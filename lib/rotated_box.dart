import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatelessWidget {
  const RotatedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: RotatedBox(
      quarterTurns: 3,
      child: Text(
        "Data",
        style: TextStyle(fontSize: 45),
      ),
    ));
  }
}
