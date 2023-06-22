import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isActive = false;
  bool isActive2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("off"),
                Switch(
                  value: isActive,
                  onChanged: (value) {
                    isActive = value;
                    setState(() {});
                  },
                ),
                const Text("on"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("off"),
                CupertinoSwitch(
                  value: isActive2,
                  onChanged: (value) {
                    isActive2 = value;
                    setState(() {});
                  },
                ),
                const Text("on"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
