import 'package:flutter/material.dart';

class Ui2Page extends StatelessWidget {
  const Ui2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.deepPurple,
                size: 30,
              ),
              Icon(
                Icons.account_circle,
                color: Colors.deepPurple,
                size: 30,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hii ",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Foad",
                    style: TextStyle(
                      color: Colors.deepPurple[400],
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tehran 18°",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 43,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search or Type Web Address",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.mic,
                  color: Colors.deepPurple,
                  size: 30,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Dribbble",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Apple",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Linkdin",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Spotify",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Figma",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Trello",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Twitter",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurple.shade200,
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.sports_baseball_outlined,
                      color: Colors.deepPurple[700],
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.deepPurple[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 43,
              ),
              Text(
                "Today News",
                style: TextStyle(
                  color: Colors.deepPurple[400],
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(
              horizontal: 43,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurple[100],
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://apksos.com/storage/images/wallpaper/ios/iphone/wallpaper.ios.iphone_1.png",
                  width: 130,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "9 to 5 Mac",
                    ),
                    Text(
                      "Everthing New in ios 15:",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "App Privacy Report and",
                    ),
                    Text(
                      "Auto Call Updates",
                    ),
                    SizedBox(
                      // color: Colors.red,
                      height: 30,
                      width: 230,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_outline),
                                Icon(Icons.bookmark_border),
                              ],
                            ),
                            Text("1 day ago"),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade200,
                      blurRadius: 10,
                      offset: const Offset(2, 3),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.deepPurple[700],
                  size: 25,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade200,
                      blurRadius: 10,
                      offset: const Offset(2, 3),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.deepPurple[700],
                  size: 25,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade200,
                      blurRadius: 10,
                      offset: const Offset(2, 3),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add_box,
                  color: Colors.deepPurple[700],
                  size: 25,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade200,
                      blurRadius: 10,
                      offset: const Offset(2, 3),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.deepPurple[700],
                  size: 25,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade200,
                      blurRadius: 10,
                      offset: const Offset(2, 3),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.deepPurple[700],
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
