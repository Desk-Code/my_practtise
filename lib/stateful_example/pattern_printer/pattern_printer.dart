import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/pattern_printer/pattern_controller.dart';

class PatternPrinter extends StatefulWidget {
  const PatternPrinter({super.key});

  @override
  State<PatternPrinter> createState() => _PatternPrinterState();
}

class _PatternPrinterState extends State<PatternPrinter> {
  String viewer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: TextField(
                controller: PatternController.txtInputedNumberOfRow,
                decoration: InputDecoration(
                  hintText: "Enter Number Of Row",
                  labelText: "Enter Number Of Row",
                  contentPadding: const EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 7,
              childAspectRatio: 5 / 1.7,
              padding: const EdgeInsets.all(10),
              children: [
                ...List.generate(
                  PatternController.pattenList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      try {
                        viewer = PatternController.pattenList[index]
                                ['function'](
                            int.parse(
                                PatternController.txtInputedNumberOfRow.text));
                      } catch (e) {
                        viewer = "String Not Supported";
                      }

                      // PatternController.displayPattern(
                      //     index: index,
                      //     value: PatternController.txtInputedNumberOfRow.text);
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                          PatternController.pattenList[index]['patternCount']),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              alignment: Alignment.topLeft,
              // child: Text(PatternController.patternViewer),

              child: Text(viewer),
            ),
          ),
        ],
      ),
    );
  }
}
