import 'package:flutter/material.dart';

Widget commonTicket({
  required String takeOffTime,
  required String takeInTime,
}) =>
    Stack(
      children: [
        Container(
          height: 150,
          padding: const EdgeInsets.all(17),
          margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.red.shade500,
                    size: 16,
                  ),
                  const Text(
                    "------------------",
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 6,
                      fontSize: 16,
                    ),
                  ),
                  Icon(
                    Icons.airplanemode_active_outlined,
                    color: Colors.red.shade500,
                    size: 16,
                  ),
                  const Text(
                    "------------------",
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 6,
                      fontSize: 16,
                    ),
                  ),
                  const Icon(
                    Icons.circle_outlined,
                    color: Colors.black,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New York",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\t\t\t12h",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Great Britain",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    takeOffTime,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    takeInTime,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4.26.2021, Tue',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '4.27.2021, Wed',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 13),
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 165,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "American AirLines",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade400,
                ),
              ),
              const Text(
                "\$120",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 155,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.shade300,
              ),
              const Text(
                "------------------------------------------",
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 6,
                  fontSize: 16,
                ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey.shade300,
              ),
            ],
          ),
        ),
      ],
    );
