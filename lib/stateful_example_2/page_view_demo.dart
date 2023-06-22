import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Center(
            child: Text(
              "Data 1",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Data 2",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Data 3",
              style: TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
