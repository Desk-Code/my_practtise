import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/bottom_navigation/home_screen.dart';
import 'package:my_practtise/stateful_example_2/bottom_navigation/library_screen.dart';
import 'package:my_practtise/stateful_example_2/bottom_navigation/shorts_screen.dart';
import 'package:my_practtise/stateful_example_2/bottom_navigation/subcription_screen.dart';

class BotoomNavigationDemo extends StatefulWidget {
  const BotoomNavigationDemo({super.key});

  @override
  State<BotoomNavigationDemo> createState() => _BotoomNavigationDemoState();
}

class _BotoomNavigationDemoState extends State<BotoomNavigationDemo> {
  List<Map> navigationData = [
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Shorts',
      'icon': Icons.video_call_rounded,
    },
    {
      'title': 'Subscription',
      'icon': Icons.add,
    },
    {
      'title': 'Library',
      'icon': Icons.library_books,
    },
  ];
  List<Widget> screens = [
    const HomeScreen(),
    const ShortsScreen(),
    const SubscriptionScreen(),
    const LibraryScreen(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: List.generate(
          navigationData.length,
          (index) => BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              navigationData[index]['icon'],
            ),
            label: navigationData[index]['title'],
          ),
        ),
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
      body: screens.elementAt(index),
    );
  }
}
