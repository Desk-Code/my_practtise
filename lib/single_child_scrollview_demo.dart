import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        // reverse: true,
        physics: const BouncingScrollPhysics(),
        primary: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        dragStartBehavior: DragStartBehavior.down,
        child: Column(
          children: List.generate(
            25, //length
            (index) => const ListTile(
              leading: Icon(Icons.fingerprint_rounded),
              title: Text("Title"),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.cancel),
            ),
          ),
        ),
      ),
    );
  }
}
