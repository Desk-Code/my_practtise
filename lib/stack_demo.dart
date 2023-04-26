import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.red,
          height: 100,
          width: 100,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ]),
    );
  }
}
