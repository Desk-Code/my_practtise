import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui13_smart_home/screens/bed_room_screen/bed_room_widgets.dart';

class BedRoomPage extends StatelessWidget {
  const BedRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.deepPurple.shade900,
        ),
        title: const Text(
          "Bed Room",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        // automaticallyImplyLeading: true,
        // leadingWidth: 35,
      ),
      body: Padding(
        padding: const EdgeInsets.all(27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  commonFunction(
                    icon: Icons.heat_pump_rounded,
                    fieldName: 'Heater',
                    isSelected: true,
                  ),
                  commonFunction(
                    icon: Icons.music_note_outlined,
                    fieldName: 'Sound',
                  ),
                  commonFunction(
                    icon: Icons.mode_fan_off,
                    fieldName: 'Fan',
                  ),
                  commonFunction(
                    icon: Icons.light,
                    fieldName: 'Light',
                  ),
                  commonFunction(
                    icon: Icons.bolt,
                    fieldName: 'Outdoar',
                  ),
                  commonFunction(
                    icon: Icons.blender,
                    fieldName: 'Blender',
                  ),
                  commonFunction(
                    icon: Icons.ac_unit,
                    fieldName: 'Ac',
                  ),
                  commonFunction(
                    icon: Icons.flare_rounded,
                    fieldName: 'weather',
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 204, 189, 231),
                      width: 1.5,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 5.0,
                          color: Colors.deepPurple.shade200,
                          blurRadius: 200,
                          offset: const Offset(0, 10)),
                    ],
                  ),
                ),
                Container(
                  width: 280,
                  height: 20,
                  alignment: Alignment.center,
                  child: const Divider(
                    color: Colors.deepPurple,
                  ),
                ),
                Container(
                  width: 20,
                  height: 280,
                  alignment: Alignment.center,
                  child: const VerticalDivider(
                    color: Colors.deepPurple,
                  ),
                ),
                Container(
                  height: 257,
                  width: 257,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 204, 189, 231),
                      width: 1.5,
                    ),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '18.5',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '°C',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 27,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.only(left: 23),
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.radio_button_checked,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current temprature",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          '18.5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '°C',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current humidity",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '60%',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text(
                    'Turn On/off',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 65,
                    margin: const EdgeInsets.all(7),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade800,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade800,
                borderRadius: BorderRadius.circular(13),
              ),
              alignment: Alignment.center,
              child: Text(
                'Set temperature',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.90),
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
