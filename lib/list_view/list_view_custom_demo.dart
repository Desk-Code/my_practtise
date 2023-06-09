import 'package:flutter/material.dart';

class ListViewCustomDemo extends StatelessWidget {
  final List<String> myFriends = [
    "Brijesh",
    "Harsh",
    "Milan",
    "Yash",
    "Umang",
    "Sahil",
    "Dev",
    "Meet",
    "Viraj",
    "Virang",
  ];

  ListViewCustomDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: myFriends.length,
                (context, index) => Text(myFriends[index]),
              ),
              itemExtent: 20,
            ),
          ),
        ],
      ),
    );
  }
}
