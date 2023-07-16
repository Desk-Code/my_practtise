import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainerDemo extends StatefulWidget {
  const MyAnimatedContainerDemo({super.key});

  @override
  State<MyAnimatedContainerDemo> createState() =>
      _MyAnimatedContainerDemoState();
}

class _MyAnimatedContainerDemoState extends State<MyAnimatedContainerDemo> {
  Random random = Random();
  double height = 100;
  double width = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Container(
            //   height: height,
            //   width: width,
            //   decoration: const BoxDecoration(
            //     color: Colors.deepPurple,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(20),
            //     ),
            //   ),
            // ),
            AnimatedContainer(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastEaseInToSlowEaseOut,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                height = random.nextDouble() * 500;
                width = random.nextDouble() * 500;
                setState(() {});
              },
              child: const Text("ChangeValue"),
            ),
          ],
        ),
      ),
    );
  }
}
