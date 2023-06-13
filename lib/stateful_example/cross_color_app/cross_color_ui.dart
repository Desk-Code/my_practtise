import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/cross_color_app/cross_color_controller.dart';

class CrossColorDemo extends StatefulWidget {
  const CrossColorDemo({super.key});

  @override
  State<CrossColorDemo> createState() => _CrossColorDemoState();
}

class _CrossColorDemoState extends State<CrossColorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 5,
        children: [
          ...List.generate(
            30,
            (index) => Container(
              decoration: BoxDecoration(
                color: CrossColor.colorChangeData(index),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                index.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: "Dancing Script",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
