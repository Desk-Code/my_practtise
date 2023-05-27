import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui14_credit_card/screens/income_page/income_page_widgets.dart';

class IncomePage extends StatelessWidget {
  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        actions: const [
          Icon(Icons.settings_outlined, color: Colors.black),
          SizedBox(width: 15)
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 7),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade200,
                borderRadius: BorderRadius.circular(9),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  commonTab(fieldName: 'Income', isSelected: true),
                  commonTab(fieldName: 'Outcome'),
                ],
              ),
            ),
            Text(
              'Saved This Month',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const Text(
              '\$25,999.00',
              style: TextStyle(
                height: 2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                commonTime(time: 'Day'),
                commonTime(time: 'Week'),
                commonTime(time: 'Month', isSelected: true),
                commonTime(time: 'Year'),
              ],
            ),
            Container(
              height: 400,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/indicator_graph.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 125,
                  margin: const EdgeInsets.only(
                    top: 31,
                    left: 100,
                    right: 100,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple.shade100,
                  ),
                ),
                Container(
                  height: 125,
                  margin: const EdgeInsets.only(
                    top: 44,
                    left: 80,
                    right: 80,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple.shade200,
                  ),
                ),
                Container(
                  height: 125,
                  margin: const EdgeInsets.only(
                    top: 57,
                    left: 60,
                    right: 60,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple.shade300,
                  ),
                ),
                Container(
                  height: 125,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(
                    top: 70,
                    left: 40,
                    right: 40,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple.shade900,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Plan for 2020',
                        style: TextStyle(color: Colors.pink.shade300),
                      ),
                      Text(
                        'Plan for 2020',
                        style: TextStyle(color: Colors.pink.shade300),
                      ),
                    ],
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
