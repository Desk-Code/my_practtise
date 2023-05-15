import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui11/common.dart';

class Ui11ProductPage extends StatelessWidget {
  const Ui11ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonCatagory({
      required String name,
      required String value,
    }) =>
        Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.white, width: 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );

    return Scaffold(
      backgroundColor: Colors.orange.shade700,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/apricot.png",
                  height: 200,
                ),
                Image.asset(
                  "assets/images/apricot.png",
                  height: 200,
                ),
              ],
            ),
            const Text(
              "Dried apricots",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Artificial selection      Taste sweet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              "Capacity",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonCatagory(name: "Calories", value: "90"),
                commonCatagory(name: "Additive", value: "3%"),
                commonCatagory(name: "Vitamins", value: "8%"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 90,
            alignment: Alignment.bottomCenter,
            color: Colors.black,
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white70,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  alignment: Alignment.bottomCenter,
                  "assets/images/cheery.png",
                  height: 35,
                ),
              ],
            ),
          ),
          commonOrder(
              quantity: "Quantity(300g)", numOfOrder: "1", price: "\$9.43")
        ],
      ),
    );
  }
}
