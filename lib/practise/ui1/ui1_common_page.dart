import 'package:flutter/material.dart';

class Ui1CommonPage extends StatelessWidget {
  const Ui1CommonPage({super.key});
  @override
  Widget build(BuildContext context) {
    Widget commonBox({
      required IconData icon,
      required String name,
      required Color color,
      double topLeft = 0,
      double topRight = 0,
      double bottomLeft = 0,
      double bottomRight = 0,
    }) =>
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topLeft),
                bottomLeft: Radius.circular(bottomLeft),
                topRight: Radius.circular(topRight),
                bottomRight: Radius.circular(bottomRight),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: Colors.white, size: 50),
              Text(name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ],
          ),
        );

    Widget commonLongBox({
      required Color backColor,
      required IconData icon,
      required Color iconColor,
      required String title,
      required String subTitle,
      required String price,
      required String date,
      double radius = 0,
    }) =>
        Container(
          height: 160,
          margin: const EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
              color: backColor, borderRadius: BorderRadius.circular(radius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: iconColor,
                child: Icon(icon, color: Colors.white, size: 30),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20, height: 1.2),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20, height: 1.2),
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ],
          ),
        );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('\$1200'), Icon(Icons.menu)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              commonBox(
                  icon: Icons.search_outlined,
                  name: "Load Money",
                  color: Colors.redAccent,
                  topRight: 30,
                  bottomLeft: 30),
              commonBox(
                  icon: Icons.money_outlined,
                  name: "Marchant Money",
                  color: Colors.greenAccent,
                  topLeft: 30,
                  bottomRight: 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              commonBox(
                  icon: Icons.print_rounded,
                  name: "Send Money",
                  color: Colors.lightBlue,
                  topLeft: 30,
                  bottomRight: 30),
              commonBox(
                  icon: Icons.image,
                  name: "Request Money",
                  color: Colors.deepPurple,
                  topLeft: 30,
                  bottomRight: 30),
            ],
          ),
          commonLongBox(
              backColor: Colors.redAccent,
              icon: Icons.search_outlined,
              iconColor: Colors.greenAccent,
              title: "Shell Darwen",
              subTitle: "Merchant Money",
              price: "\$30",
              date: "19/01/2022",
              radius: 20),
          commonLongBox(
              backColor: Colors.purple,
              icon: Icons.image,
              iconColor: Colors.lightBlue,
              title: "John Doe",
              subTitle: "Merchant Money",
              price: "\$50",
              date: "23/01/2022",
              radius: 20)
        ],
      ),
    );
  }
}
