import 'package:flutter/material.dart';

Widget commonField({
  required String fieldName,
  bool isSelected = false,
}) =>
    Container(
      height: 35,
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepOrange.shade600 : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        fieldName,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );

Widget commonCityTile({
  required String cityImg,
  required String cityName,
  required String price,
  double height = 275,
}) =>
    Container(
      width: 200,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        image: DecorationImage(
          image: AssetImage(
            cityImg,
          ),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cityName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Container(
            height: 30,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
