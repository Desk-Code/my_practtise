import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool isCricket = false;
  bool isFootball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Gender :",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Checkbox(
              value: isCricket,
              onChanged: (value) {
                isCricket = value!;
                setState(() {});
              },
              activeColor: Colors.deepPurple,
            ),
            const Text(
              "Cricket",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Checkbox(
              value: isFootball,
              onChanged: (value) {
                isFootball = value!;
                setState(() {});
              },
              activeColor: Colors.deepPurple,
            ),
            const Text(
              "Football",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
