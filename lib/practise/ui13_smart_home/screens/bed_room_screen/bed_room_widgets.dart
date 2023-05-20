import 'package:flutter/material.dart';

Widget commonFunction({
  required IconData icon,
  required String fieldName,
  bool isSelected = false,
}) =>
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: isSelected ? Colors.deepOrange : Colors.white,
            shape: BoxShape.circle,
            border: isSelected ? null : Border.all(color: Colors.grey.shade400),
          ),
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        Text(
          fieldName,
          style: TextStyle(
            color: isSelected ? Colors.deepOrange : Colors.grey.shade400,
          ),
        )
      ],
    );
