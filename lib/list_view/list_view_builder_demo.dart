import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
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
  ListViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListView.builder(
                itemCount: myFriends.length,
                itemBuilder: (context, index) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(myFriends[index]),
                    const Divider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
