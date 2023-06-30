import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/calls_page.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/chats_page.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/status_page.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(
        microseconds: 3000,
      ),
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Whatsapp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Dancing Script",
            ),
          ),
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: TabBar(
              tabs: [
                Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script",
                  ),
                ),
                Text(
                  "Status",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script",
                  ),
                ),
                Text(
                  "Calls",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dancing Script",
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ChatsPage(),
            StatusPage(),
            CallsPage(),
          ],
        ),
      ),
    );
  }
}
