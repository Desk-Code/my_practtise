import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Harsh Sangani",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            backgroundColor: Colors.deepPurpleAccent,
            wordSpacing: 11.0,
            letterSpacing: 11.0,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.amber,
            decorationStyle: TextDecorationStyle.dotted,
            decorationThickness: 1.2,
            fontWeight: FontWeight.w800,
            overflow: TextOverflow.ellipsis,
            height: 5.0,
          ),
          maxLines: 1,
          overflow: TextOverflow.clip,
          softWrap: true,
          textAlign: TextAlign.end,
          textDirection: TextDirection.rtl,
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
