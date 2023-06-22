import 'package:flutter/material.dart';

class PopUpMenuItemDemo extends StatefulWidget {
  const PopUpMenuItemDemo({super.key});

  @override
  State<PopUpMenuItemDemo> createState() => _PopUpMenuItemDemoState();
}

class _PopUpMenuItemDemoState extends State<PopUpMenuItemDemo> {
  List<String> myFriends = ["Harsh", "Milan", "Taral", "Raj", "Yash", "Umang"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (context) => myFriends
              .map((e) => PopupMenuItem(
                    child: Text(e),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
