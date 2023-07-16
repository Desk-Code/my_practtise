import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui12_ticket_booking/screens/booking_screen/bokking_page_widgets.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            padding: const EdgeInsets.only(left: 17, top: 25),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/london_tower.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topLeft,
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 250),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange.shade500,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "Avia",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Train",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Car",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "2 tickets",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        commonTicket(
                            takeOffTime: '10:40am', takeInTime: '12:40pm'),
                        commonTicket(
                            takeOffTime: '12:22', takeInTime: '2:22pm'),
                        commonTicket(
                            takeOffTime: '12:22', takeInTime: '2:22pm'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
