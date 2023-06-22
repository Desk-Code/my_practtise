import 'package:flutter/material.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  const CheckBoxListTileDemo({super.key});

  @override
  State<CheckBoxListTileDemo> createState() => _CheckBoxListTileDemoState();
}

class _CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  bool isCricket = false;
  bool isFootball = false;
  bool isDancing = false;
  bool isSinging = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            value: isCricket,
            onChanged: (value) {
              isCricket = value!;
              setState(() {});
            },
            secondary: const Text("Cricket"),
          ),
          CheckboxListTile(
            value: isFootball,
            onChanged: (value) {
              isFootball = value!;
              setState(() {});
            },
            secondary: const Text("Football"),
          ),
          CheckboxListTile(
            value: isDancing,
            onChanged: (value) {
              isDancing = value!;
              setState(() {});
            },
            secondary: const Text("Dancing"),
          ),
          CheckboxListTile(
            value: isSinging,
            onChanged: (value) {
              isSinging = value!;
              setState(() {});
            },
            secondary: const Text("Singing"),
          ),
        ],
      ),
    );
  }
}
