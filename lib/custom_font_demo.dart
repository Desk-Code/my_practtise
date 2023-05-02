import 'package:flutter/material.dart';

class CustomFontDemo extends StatelessWidget {
  const CustomFontDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Demo Of Custom Text",
          style: TextStyle(
            fontFamily: "Dancing Script",
            color: Colors.indigo,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
