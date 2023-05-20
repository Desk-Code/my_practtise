import 'package:flutter/material.dart';

Widget commonRoom({
  required IconData icon,
  required String fieldData,
  required String numOfDevice,
  bool isSelected = false,
}) =>
    Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : null,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.orange,
            size: 35,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                fieldData,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$numOfDevice device',
                style: TextStyle(
                    color: isSelected ? Colors.black87 : Colors.grey.shade500),
              ),
            ],
          ),
        ],
      ),
    );
