import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/cross_color_app/cross_color_controller.dart';

class CrossColorDemo extends StatefulWidget {
  const CrossColorDemo({super.key});

  @override
  State<CrossColorDemo> createState() => _CrossColorDemoState();
}

class _CrossColorDemoState extends State<CrossColorDemo> {
  @override
  Widget build(BuildContext context) {
    CrossColor.crossPattern();
    // int index = 30;
    // List<int> number = [];
    // int i = 0;
    // do {
    //   if (i % 2 == 0) {
    //     number.add(i);
    //     i += 3;
    //   } else {
    //     number.add(i);
    //     i += 1;
    //   }
    // } while (i < index);
    // number.add(0);

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 5,
        children: [
          ...List.generate(
            CrossColor.inputedData.length,
            (index) => Container(
              decoration: BoxDecoration(
                color: CrossColor.outputData.contains(index)
                    ? Colors.red
                    : Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                index.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: "Dancing Script",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
