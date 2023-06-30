import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  List<Map<String, dynamic>> hobbys = [
    {
      "hobby": "Cricket",
      "value": false,
    },
    {
      "hobby": "Cricket",
      "value": false,
    },
    {
      "hobby": "Football",
      "value": false,
    },
    {
      "hobby": "Socker",
      "value": false,
    },
    {
      "hobby": "Basketball",
      "value": false,
    },
    {
      "hobby": "Dancing",
      "value": false,
    },
    {
      "hobby": "Singing",
      "value": false,
    },
    {
      "hobby": "Travelling",
      "value": false,
    },
    {
      "hobby": "Riding",
      "value": false,
    },
    {
      "hobby": "Cycling",
      "value": false,
    },
    {
      "hobby": "Reading",
      "value": false,
    },
    {
      "hobby": "Editing",
      "value": false,
    },
    {
      "hobby": "Coding",
      "value": false,
    },
    {
      "hobby": "PhotoGraphy",
      "value": false,
    },
  ];

  List<String> result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text(
                  "Select Your Hobbies from below List?",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                ...List.generate(
                  hobbys.length,
                  (index) => CheckboxListTile(
                    value: hobbys[index]['value'],
                    onChanged: (value) {
                      hobbys[index]['value'] = value!;
                      setState(() {});
                    },
                    secondary: Text(
                      hobbys[index]['hobby'],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    result.clear();
                    for (int i = 0; i < hobbys.length; i++) {
                      (hobbys[i]['value'])
                          ? result.add(hobbys[i]['hobby'])
                          : null;
                    }
                    setState(() {});
                  },
                  child: const Text("Submit"),
                ),
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  alignment: Alignment.center,
                  child: Text((result.isEmpty) ? "" : "Hobbies: $result"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
