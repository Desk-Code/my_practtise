import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui12_ticket_booking/screens/home_screen/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Where would \nyou like to travel?",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2),
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80"),
                ),
              ],
            ),
            Container(
              height: 45,
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(13)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
                  ),
                  const Icon(
                    Icons.segment_rounded,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  commonField(fieldName: 'All'),
                  commonField(fieldName: 'Flight', isSelected: true),
                  commonField(fieldName: 'Cruise'),
                  commonField(fieldName: 'Trains'),
                  commonField(fieldName: 'Bus'),
                  commonField(fieldName: 'Taxi'),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        commonCityTile(
                          cityImg: "assets/images/paris.jpeg",
                          cityName: "Paris",
                          price: "\$120",
                        ),
                        commonCityTile(
                            cityImg: "assets/images/spain.jpeg",
                            cityName: "Spain",
                            price: "\$340",
                            height: 175),
                        commonCityTile(
                          cityImg: "assets/images/paris.jpeg",
                          cityName: "Paris",
                          price: "\$120",
                        ),
                        commonCityTile(
                            cityImg: "assets/images/white.jpg",
                            cityName: "Spain",
                            price: "\$340",
                            height: 175),
                      ],
                    ),
                    Column(
                      children: [
                        commonCityTile(
                            cityImg: "assets/images/rom.jpeg",
                            cityName: "Rom",
                            price: "\$270",
                            height: 175),
                        commonCityTile(
                          cityImg: "assets/images/bali.jpeg",
                          cityName: "Bali",
                          price: "\$500",
                        ),
                        commonCityTile(
                            cityImg: "assets/images/rom.jpeg",
                            cityName: "Rom",
                            price: "\$270",
                            height: 175),
                        commonCityTile(
                          cityImg: "assets/images/bali.jpeg",
                          cityName: "Bali",
                          price: "\$500",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(238, 238, 238, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_filled, color: Colors.deepOrange.shade600),
            Icon(
              Icons.favorite,
              color: Colors.grey.shade500,
            ),
            Icon(
              Icons.all_inbox,
              color: Colors.grey.shade500,
            ),
            Icon(
              Icons.person,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
    );
  }
}
