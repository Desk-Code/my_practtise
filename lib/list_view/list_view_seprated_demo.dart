import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewSepretedDemo extends StatelessWidget {
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
  ListViewSepretedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: myFriends.length,
              itemBuilder: (context, index) => Text(myFriends[index]),
              separatorBuilder: (context, index) => const Divider(),
              clipBehavior: Clip.hardEdge,
              dragStartBehavior: DragStartBehavior.down,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: const EdgeInsets.all(20),
              primary: false,
              reverse: true,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
