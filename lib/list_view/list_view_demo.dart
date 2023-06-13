import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        // dragStartBehavior: DragStartBehavior.down,
        // itemExtent: 50,
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        // padding: EdgeInsets.only(left: 50),
        // primary: true,
        // reverse: true,
        // shrinkWrap: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          ...List.generate(
            200,
            (index) => Text(
              index.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
