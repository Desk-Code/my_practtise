import 'package:flutter/material.dart';

class FutureDelay extends StatefulWidget {
  const FutureDelay({super.key});

  @override
  State<FutureDelay> createState() => _FutureDelayState();
}

Future futureDemo() async {
  Future.delayed(const Duration(seconds: 3), () {
    for (int i = 1; i <= 10; i++) {
      Future.delayed(const Duration(seconds: 3), () {
        print("hyy");
      });
    }
  });
}

class _FutureDelayState extends State<FutureDelay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              futureDemo();
              setState(() {});
            },
            child: const Text("Print")),
      ),
    );
  }
}
