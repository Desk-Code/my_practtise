import 'package:flutter/material.dart';

class DropDownListDemo extends StatefulWidget {
  const DropDownListDemo({super.key});

  @override
  State<DropDownListDemo> createState() => _DropDownListDemoState();
}

class _DropDownListDemoState extends State<DropDownListDemo> {
  List<String> courses = [
    "c",
    "c++",
    "java",
    "python",
    "dart",
    "php",
    "html",
    "css",
    "java script"
  ];
  String selectedValue = "c";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: selectedValue,
          items: List.generate(
              courses.length,
              (index) => DropdownMenuItem(
                    value: courses[index],
                    child: Text(
                      courses[index],
                    ),
                  )),
          onChanged: (value) {
            selectedValue = value!;
            setState(() {});
          },
        ),
      ),
    );
  }
}
