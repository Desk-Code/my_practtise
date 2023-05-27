import 'package:flutter/material.dart';

Widget commonTab({
  required String fieldName,
  bool isSelected = false,
}) =>
    Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : null,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Text(
          fieldName,
          style: TextStyle(
              color: isSelected ? Colors.grey.shade700 : Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

Widget commonTime({
  required String time,
  bool isSelected = false,
}) =>
    Text(
      time,
      style: TextStyle(
        color: isSelected ? Colors.purple.shade700 : Colors.grey.shade800,
        fontWeight: FontWeight.bold,
        height: 2.5,
      ),
    );
