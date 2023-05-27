import 'package:flutter/material.dart';

class RotateDemo extends StatefulWidget {
  const RotateDemo({super.key});

  @override
  State<RotateDemo> createState() => _RotateDemoState();
}

class _RotateDemoState extends State<RotateDemo> {
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            angle += 45;
            if (angle >= 360) {
              angle = 0;
            }
            setState(() {
              print(angle);
            });
          },
          child: Transform.rotate(
            angle: angle * (22 / 7) / 180,
            child: Container(
              color: Colors.black,
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
