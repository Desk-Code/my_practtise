import 'package:flutter/material.dart';

class Ui11HomePage extends StatelessWidget {
  const Ui11HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonIconList({
      required IconData icon,
    }) =>
        Container();

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
          crossAxisAlignment: CrossAxisAlignment.center,
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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.ac_unit_sharp),
                    ),
                    const Text(
                      "Dried fruit",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.add_home_work,
                        size: 20,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const Text(
                      "Dried fruit",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                            colors: [Colors.white, Colors.amber, Colors.white],
                            center: Alignment.bottomLeft,
                            stops: [0.0005, 5, 0.1]),
                      ),
                    ),
                    const Icon(Icons.search, size: 35),
                  ],
                ),
              ],
            ),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
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
                  height: 185,
                  width: 100,
                  margin: const EdgeInsets.only(right: 335),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1633933358116-a27b902fad35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
                        ),
                        fit: BoxFit.fitHeight),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
