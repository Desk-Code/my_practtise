import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui11/common.dart';

class Ui11ShoppingPage extends StatelessWidget {
  const Ui11ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonShoppingList({
      required String img,
      required String productName,
      required String price,
      required String itemCount,
    }) =>
        ListTile(
            leading: Image.asset(img),
            title: Text(
              productName,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              price,
              style: const TextStyle(color: Colors.white),
            ),
            trailing: Text.rich(TextSpan(children: [
              const TextSpan(text: 'X', style: TextStyle(color: Colors.white)),
              TextSpan(
                  text: itemCount, style: const TextStyle(color: Colors.white))
            ])));

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.amber.shade900,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.amber.shade900,
                Colors.black87,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.15, 0.1]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            commonOrder(
              quantity: "Quantity(300g)",
              numOfOrder: "1",
              price: "\$9.43",
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  "Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            commonShoppingList(
                img: 'assets/images/apricot.png',
                productName: 'Dried apricots',
                price: '\$9.43',
                itemCount: '1'),
            commonShoppingList(
                img: 'assets/images/cheery.png',
                productName: 'Dried cherrys',
                price: '\$15.55',
                itemCount: '1'),
            commonShoppingList(
                img: 'assets/images/plumes.png',
                productName: 'Dried plums',
                price: '\$13.27',
                itemCount: '1'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "3 Items",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    height: 40,
                    width: 210,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(
                            color: Colors.orange.shade300, width: 3)),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "\$38.25",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 122,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade300,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
