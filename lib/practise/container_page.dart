import 'package:flutter/material.dart';

class ContainerAndTextPage extends StatelessWidget {
  const ContainerAndTextPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 200,
        width: 200,
        // alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        color: Colors.tealAccent,
        child: const Text(
          "Harsh Sangani And Milan Maniya",
          style: TextStyle(
            color: Colors.white,
            // overflow: TextOverflow.visible,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amber,
            backgroundColor: Colors.blueGrey,
            fontSize: 20,
            letterSpacing: 10,
            wordSpacing: 11,
            fontWeight: FontWeight.bold,
            height: 2,
            decorationThickness: 1.5,
            decorationStyle: TextDecorationStyle.dashed,
          ),
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
