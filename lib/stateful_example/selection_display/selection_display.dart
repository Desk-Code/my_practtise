import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/selection_display/selection.controller.dart';

class SelectionDisplayDemo extends StatefulWidget {
  const SelectionDisplayDemo({super.key});

  @override
  State<SelectionDisplayDemo> createState() => _SelectionDisplayDemoState();
}

class _SelectionDisplayDemoState extends State<SelectionDisplayDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text(
              "Please Select Your Gender ?",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  SelectionControl.isTapped[0] = true;
                  SelectionControl.gender = "Male";
                  SelectionControl.isTapped[1] = false;
                  setState(() {});
                },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[0])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.male,
                        size: 25,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  SelectionControl.isTapped[1] = true;
                  SelectionControl.gender = "Female";
                  SelectionControl.isTapped[0] = false;
                  setState(() {});
                },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[1])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.female,
                        size: 25,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Center(
            child: Text(
              "Please Select Your Hobbys ?",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (SelectionControl.isTapped[2] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Cricket");
                        SelectionControl.isTapped[2] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Cricket");
                        SelectionControl.isTapped[2] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[2])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Cricket",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (SelectionControl.isTapped[3] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Football");
                        SelectionControl.isTapped[3] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Football");
                        SelectionControl.isTapped[3] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[3])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Football",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (SelectionControl.isTapped[4] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Reading");
                        SelectionControl.isTapped[4] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Reading");
                        SelectionControl.isTapped[4] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[4])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Reading",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (SelectionControl.isTapped[5] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Travelling");
                        SelectionControl.isTapped[5] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Travelling");
                        SelectionControl.isTapped[5] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[5])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Travelling",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (SelectionControl.isTapped[6] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Dancing");
                        SelectionControl.isTapped[6] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Dancing");
                        SelectionControl.isTapped[6] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[6])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Dancing",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (SelectionControl.isTapped[7] == true)
                    ? () {
                        SelectionControl.hobbys.remove("Singing");
                        SelectionControl.isTapped[7] = false;
                        setState(() {});
                      }
                    : () {
                        SelectionControl.hobbys.add("Singing");
                        SelectionControl.isTapped[7] = true;
                        setState(() {});
                      },
                child: Container(
                  height: 85,
                  width: 150,
                  decoration: BoxDecoration(
                    color: (SelectionControl.isTapped[7])
                        ? Colors.grey
                        : Colors.grey.shade300,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Singing",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (SelectionControl.gender == '')
                ? null
                : (SelectionControl.hobbys.isEmpty)
                    ? null
                    : () {
                        SelectionControl.result =
                            'Gender : ${SelectionControl.gender} \n hobbeyName: ${SelectionControl.hobbys} \n';
                        SelectionControl.clearControl();
                        setState(() {});
                      },
            child: const Text("Submit"),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: Text(
              SelectionControl.result,
            ),
          ),
        ],
      ),
    );
  }
}
