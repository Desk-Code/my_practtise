import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/insta_page1.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/insta_page2.dart';

class InstaAcoountPage extends StatefulWidget {
  const InstaAcoountPage({super.key});

  @override
  State<InstaAcoountPage> createState() => _InstaAcoountPageState();
}

class _InstaAcoountPageState extends State<InstaAcoountPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Text("desk_of_code"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.centerLeft,
                child: const Text("Proffessional dashboard"),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: const Text("Edit profile"),
              ),
              const TabBar(
                tabs: [
                  Icon(Icons.grid_3x3),
                  Icon(Icons.account_box_rounded),
                ],
              ),
              Container(
                height: 1000,
                width: 500,
                margin: const EdgeInsets.only(top: 5),
                child: const TabBarView(
                  children: [
                    InstaPage1(),
                    InstaPage2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
