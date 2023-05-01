import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.red,
              height: 300,
              width: 300,
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
