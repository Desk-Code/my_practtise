import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui13_smart_home/screens/home_screen/home_screen_widgets.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome home",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const Text(
                      "Alex Tobey",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/stobarry.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                ),
                alignment: Alignment.center,
                child: const Icon(Icons.bolt_rounded),
              ),
              title: const Text(
                '20.3 Kwh',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              subtitle: const Text(
                "Power usage for today",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonRoom(
                  icon: Icons.bathtub_outlined,
                  fieldData: 'Bathroom',
                  numOfDevice: '1',
                  isSelected: true,
                ),
                commonRoom(
                  icon: Icons.living_outlined,
                  fieldData: 'Living room',
                  numOfDevice: '4',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                commonRoom(
                  icon: Icons.kitchen_outlined,
                  fieldData: 'Kitchen',
                  numOfDevice: '2',
                ),
                commonRoom(
                  icon: Icons.dinner_dining,
                  fieldData: 'Dining room',
                  numOfDevice: '1',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.only(top: 20, left: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade900,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: AlignmentDirectional.topCenter,
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/stobarry.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text(
                "Worry About Me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Elite Goulding, blackbear',
                style: TextStyle(
                  color: Colors.deepPurple.shade300,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.orange,
                    ),
                    child: const Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.deepPurple.shade900,
                  size: 27,
                ),
                Icon(
                  Icons.group,
                  color: Colors.grey.shade400,
                  size: 27,
                ),
                Icon(
                  Icons.bolt,
                  color: Colors.grey.shade400,
                  size: 27,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.grey.shade400,
                  size: 27,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
