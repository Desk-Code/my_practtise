import 'package:flutter/material.dart';

class InstaPage1 extends StatefulWidget {
  const InstaPage1({super.key});

  @override
  State<InstaPage1> createState() => _InstaPage1State();
}

class _InstaPage1State extends State<InstaPage1> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      mainAxisSpacing: 5,
      children: [
        ...List.generate(
          5,
          (index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
