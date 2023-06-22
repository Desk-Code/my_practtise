import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List<String> myFriends = ["Harsh", "Milan", "Taral", "Raj", "Yash", "Umang"];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: selectedValue,
          hint: const Text("Select a friend"),
          icon: const Icon(Icons.settings),
          items: myFriends
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ))
              .toList(),
          onChanged: (value) {
            selectedValue = value!;
            setState(() {});
          },
        ),
      ),
    );
  }
}
