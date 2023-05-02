import 'package:flutter/material.dart';

class Ui10TicketBookingPage extends StatelessWidget {
  const Ui10TicketBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonBottom({
      required IconData icon,
      required String data,
      Color iconColor = Colors.white,
      Color textColor = Colors.white,
      double iconSize = 30,
      bool gradientValue = false,
    }) =>
        Container(
          decoration: BoxDecoration(
            gradient: (gradientValue)
                ? const LinearGradient(
                    colors: [Colors.lightBlue, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
          ),
          child: Column(
            children: [
              Icon(icon, color: iconColor, size: iconSize),
              Text(data, style: TextStyle(color: textColor, fontSize: 16)),
            ],
          ),
        );

    Widget commonSection({
      required IconData icon,
      required String data,
      required Color color,
      required Color iconColor,
    }) =>
        Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Icon(icon, color: iconColor, size: 40),
            ),
            Text(
              data,
              style: const TextStyle(color: Colors.black87, fontSize: 16),
            )
          ],
        );

    Widget commonCollection({
      required IconData icon,
      required String data,
    }) =>
        Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 20,
            ),
            Text(
              data,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        );

    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        leading: Icon(Icons.notes, color: Colors.red.shade200, size: 30),
        actions: [
          const Icon(Icons.account_balance_wallet_rounded, color: Colors.white),
          Container(
            width: 100,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.account_circle, color: Colors.white),
                Text(
                  "Biz",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            commonBottom(icon: Icons.account_circle, data: "Home"),
            commonBottom(icon: Icons.circle_outlined, data: "My Trips"),
            commonBottom(icon: Icons.local_offer, data: "Offer"),
            commonBottom(icon: Icons.email, data: "Trip Ideas"),
            commonBottom(icon: Icons.money, data: "Trip Money"),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(25)),
            child: Row(
              children: const [
                SizedBox(width: 7),
                Icon(
                  Icons.account_circle_sharp,
                  color: Colors.red,
                  size: 37,
                ),
                SizedBox(width: 50),
                Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                  size: 28,
                ),
                Text(
                  "Try Delhi Activities",
                  style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            ),
          ),
          Stack(
            // alignment: Alignment.topCenter,
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  commonSection(
                    icon: Icons.flight,
                    data: "Flights",
                    color: Colors.orange.shade900,
                    iconColor: Colors.blue,
                  ),
                  commonSection(
                    icon: Icons.hotel,
                    data: "Hotels",
                    color: Colors.red,
                    iconColor: Colors.green,
                  ),
                  commonSection(
                    icon: Icons.train,
                    data: "Trains",
                    color: Colors.blue,
                    iconColor: Colors.yellow,
                  ),
                  commonSection(
                    icon: Icons.holiday_village,
                    data: "Holidays",
                    color: Colors.indigo,
                    iconColor: Colors.lightBlue.shade200,
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    commonBottom(
                      icon: Icons.car_rental,
                      data: "Airport Cabs",
                      iconColor: Colors.blue,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                    commonBottom(
                      icon: Icons.self_improvement,
                      data: "Self Drive",
                      iconColor: Colors.blue,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    commonBottom(
                      icon: Icons.home,
                      data: "Home Stays",
                      iconColor: Colors.red,
                      textColor: Colors.black,
                      iconSize: 50,
                      gradientValue: true,
                    ),
                    commonBottom(
                      icon: Icons.campaign,
                      data: "NearBy GateWays",
                      iconColor: Colors.red,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    commonBottom(
                      icon: Icons.factory,
                      data: "Outstation Cabs",
                      iconColor: Colors.yellow,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                    commonBottom(
                      icon: Icons.flight_takeoff,
                      data: "Self Drive",
                      iconColor: Colors.yellow,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    commonBottom(
                      icon: Icons.star,
                      data: "Tours",
                      iconColor: Colors.indigo,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                    commonBottom(
                      icon: Icons.book,
                      data: "Visa services",
                      iconColor: Colors.indigo,
                      textColor: Colors.black,
                      iconSize: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonCollection(
                    icon: Icons.calendar_month, data: "Events & Festivals"),
                const VerticalDivider(
                    color: Colors.black, indent: 10, endIndent: 10),
                commonCollection(
                    icon: Icons.card_giftcard_outlined, data: "Gift Card"),
                const VerticalDivider(
                    color: Colors.black, indent: 10, endIndent: 10),
                commonCollection(icon: Icons.local_offer, data: "Offer"),
                const VerticalDivider(
                    color: Colors.black, indent: 10, endIndent: 10),
                commonCollection(icon: Icons.train, data: "Hydrabad"),
              ],
            ),
          ),
          const Text(
            "\t\t\tWelcome offer For you, Prince",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Container(
            height: 150,
            width: double.infinity,
            // padding: EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1568622188089-be0bcf48be4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHJ1c3NpYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
