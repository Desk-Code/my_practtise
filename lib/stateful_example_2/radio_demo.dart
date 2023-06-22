import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  const RadioDemo({super.key});

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  String gender = "Gender", male = "Male", female = "Female";

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
            Radio(
              value: male,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
              activeColor: Colors.deepPurple,
            ),
            const Text(
              "Male",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Radio(
              value: female,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
            ),
            const Text(
              "Female",
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
