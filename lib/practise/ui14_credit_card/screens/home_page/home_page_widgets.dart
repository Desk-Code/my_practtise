import 'package:flutter/material.dart';

Widget commonCard({
  required String cardNumber,
  required String cardHoldereName,
  required Color color,
  double height = 0,
  double width = 0,
}) =>
    Container(
      height: 210 + height,
      width: 380 + width,
      padding: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(7),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/images.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 7,
                ),
                child: Transform.rotate(
                  angle: 90 * (22 / 7) / 180,
                  child: const Icon(
                    Icons.wifi,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          Text(
            cardNumber,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.8,
              fontSize: 22,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(0.8),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            cardHoldereName,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
          const Text(
            "Ghulam Rasool",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
