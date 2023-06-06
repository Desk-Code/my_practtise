import 'package:flutter/material.dart';

class ListMapDemo extends StatelessWidget {
  final List<Map<String, dynamic>> listOfDetails = [
    {
      "name": "abc",
      "age": 18,
      "Stream": "bca",
      "email-id": "abc@gmail.com",
    },
    {
      "name": "def",
      "age": 20,
      "Stream": "bba",
      "email-id": "def@gmail.com",
    },
    {
      "name": "ghi",
      "age": 22,
      "Stream": "b.com",
      "email-id": "ghi@gmail.com",
    },
    {
      "name": "jkl",
      "age": 17,
      "Stream": "bca",
      "email-id": "jkl@gmail.com",
    },
    {
      "name": "mno",
      "age": 16,
      "Stream": "bca",
      "email-id": "mno@gmail.com",
    },
  ];
  ListMapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          listOfDetails.length,
          (index) => ListTile(
            leading: CircleAvatar(
              child: Text(
                listOfDetails[index]["age"].toString(),
              ),
            ),
            title: Text(listOfDetails[index]["name"]),
            subtitle: Text(listOfDetails[index]["email-id"]),
            trailing: Text(listOfDetails[index]["Stream"]),
          ),
        ),
      ),
    );
  }
}
