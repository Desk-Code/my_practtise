import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui14_credit_card/screens/home_page/home_page_widgets.dart';

class UI14HomePage extends StatelessWidget {
  const UI14HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.notes,
          color: Colors.black,
          size: 25,
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/person.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ghulam",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 25,
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigo.shade600,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 157, right: 20),
                  child: Transform.rotate(
                    angle: 75 * 3.1428 / 180,
                    alignment: Alignment.center,
                    child: commonCard(
                        width: -10,
                        cardNumber: '4562 1122 4595 7852',
                        cardHoldereName: 'Ghulam Rasool',
                        color: Colors.pink.shade300),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150, left: 120),
                  child: Transform.rotate(
                    angle: 105 * 3.1428 / 180,
                    alignment: Alignment.center,
                    child: commonCard(
                        cardNumber: '4562 1122 4595 7852',
                        cardHoldereName: 'Ghulam Rasool',
                        color: Colors.blueAccent.shade400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150, left: 50),
                  child: Transform.rotate(
                    angle: 90 * 3.1428 / 180,
                    alignment: Alignment.center,
                    child: commonCard(
                        height: 16,
                        width: 30,
                        cardNumber: '4562 1122 4595 7852',
                        cardHoldereName: 'Ghulam Rasool',
                        color: Colors.deepPurple.shade400),
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
