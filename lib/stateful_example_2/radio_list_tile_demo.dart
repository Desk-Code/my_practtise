import 'package:flutter/material.dart';

class RadioListTileDemo extends StatefulWidget {
  const RadioListTileDemo({super.key});

  @override
  State<RadioListTileDemo> createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
  String male = "Male";
  String female = "Female";
  String gender = "Gender";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Gender :"),
            RadioListTile(
              value: male,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
              title: Text(male),
            ),
            RadioListTile(
              value: female,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
              title: Text(female),
            ),
          ],
        ),
      ),
    );
  }
}
