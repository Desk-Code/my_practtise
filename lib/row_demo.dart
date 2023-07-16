import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Harsh"),
          Text("J"),
          Text("Sangani"),
        ],
      ),
    );
  }
}
