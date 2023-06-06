import 'package:flutter/material.dart';

class ListGenerateDemo extends StatelessWidget {
  final List<String> myFriends = [
    "abc",
    "def",
    "ghi",
    "jkl",
    "mno",
    "pqr",
    "stu",
    "vwx",
    "xyz"
  ];

  ListGenerateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          myFriends.length,
          (index) => Text(
            myFriends[index],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
