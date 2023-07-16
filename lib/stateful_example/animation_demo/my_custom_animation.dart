import 'package:flutter/material.dart';

class ClockWiseRotation extends AnimatedWidget {
  const ClockWiseRotation({super.key, required super.listenable});

  Animation<double> get controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: controller.value * 20,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class AntiClockWise extends AnimatedWidget {
  const AntiClockWise({super.key, required super.listenable});

  Animation<double> get controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -controller.value * 20,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
