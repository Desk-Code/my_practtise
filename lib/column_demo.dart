import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Harsh"),
          Text("j"),
          Text("Sangani"),
        ],
      ),
    );
  }
}
