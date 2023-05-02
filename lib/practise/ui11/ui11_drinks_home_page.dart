import 'package:flutter/material.dart';

class Ui11HomePage extends StatelessWidget {
  const Ui11HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonIconList({
      required String image,
      bool isSelected = false,
    }) =>
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.orange : Colors.grey,
              ),
            ),
            isSelected
                ? Image.asset(
                    image,
                    height: 55,
                  )
                : Image.asset(
                    image,
                    height: 30,
                  )
          ],
        );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.notes, color: Colors.black),
        actions: const [
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          SizedBox(width: 10)
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("Hi, Helen", textAlign: TextAlign.start),
            const Text(
              "What's today taste? 😋",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orangeAccent),
                          child: Image.asset("assets/images/icon.png"),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Dried fruits",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 10, bottom: 10),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            Image.asset(
                              "assets/images/icon1.png",
                              height: 40,
                            )
                          ],
                        ),
                        const Text(
                          "Nuts",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            gradient: RadialGradient(
                                colors: [
                                  Colors.white,
                                  Colors.amber,
                                  Colors.white
                                ],
                                center: Alignment.bottomLeft,
                                stops: [0.0005, 5, 0.1]),
                          ),
                        ),
                        const Icon(Icons.search, size: 35),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 180,
                      backgroundColor: Colors.orange.shade700,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 45),
                      height: 225,
                      width: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dried apricots",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                "\$9.43",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "   / 300g",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              Icon(
                                Icons.star_half,
                                color: Colors.white,
                                size: 15,
                              ),
                            ],
                          ),
                          Container(
                            width: 125,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 360),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.favorite, color: Colors.red.shade900),
                    ),
                    Container(
                      height: 170,
                      margin: const EdgeInsets.only(right: 335),
                      child: Image.asset('assets/images/apricot.png'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonIconList(
                    image: "assets/images/cheery.png", isSelected: false),
                commonIconList(
                    image: "assets/images/apricot.png", isSelected: true),
                commonIconList(
                    image: "assets/images/plumes.png", isSelected: false),
                Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Icon(Icons.add, color: Colors.grey.shade400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
