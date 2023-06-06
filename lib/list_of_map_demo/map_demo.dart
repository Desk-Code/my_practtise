import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  final Map<String, dynamic> myDetails = {
    "name": "data",
    "age": 20,
    "ph no": "7896541230",
    "email id": "bcjsbjc@gmail.com",
    "address": "asdgh cvb",
  };

  MapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            myDetails["name"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            myDetails["age"].toString(),
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            myDetails["ph no"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            myDetails["email id"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            myDetails["address"],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
