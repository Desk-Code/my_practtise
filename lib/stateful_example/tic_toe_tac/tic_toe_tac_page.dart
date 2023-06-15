import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/tic_toe_tac/tic_toe_tac.controller.dart';

class TicToetacPage extends StatefulWidget {
  const TicToetacPage({super.key});

  @override
  State<TicToetacPage> createState() => _TicToetacPageState();
}

class _TicToetacPageState extends State<TicToetacPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Player O",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    playerOCount.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Player X",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    playerXCount.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Draw",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                  Text(
                    drawMatch.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Dancing Script",
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          GridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            children: [
              ...List.generate(
                9,
                (index) => GestureDetector(
                  onTap: () async {
                    setState(() {});
                    await TicToeTac.playerSwapping(index, context);
                    setState(() {});
                  },
                  child: Card(
                    elevation: elevation[index],
                    color: cardColor[index],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Colors.black,
                        )),
                    child: Center(
                      child: Text(
                        value[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                ),
                onPressed: () {
                  TicToeTac.clearControl();
                  setState(() {});
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                (xTurn) ? "Player O" : "Player X",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dancing Script",
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                ),
                onPressed: () {
                  playerOCount = 0;
                  playerXCount = 0;
                  drawMatch = 0;
                  setState(() {
                    TicToeTac.clearControl();
                  });
                },
                child: const Text(
                  "Restart",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
