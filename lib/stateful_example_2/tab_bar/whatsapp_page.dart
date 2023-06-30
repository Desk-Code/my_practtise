import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/calls_page.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/chat_page.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/status_page.dart';
import 'package:my_practtise/stateful_example_2/tab_bar/group_page.dart';

class WhatsAppPageTabBar extends StatefulWidget {
  const WhatsAppPageTabBar({super.key});

  @override
  State<WhatsAppPageTabBar> createState() => _WhatsAppPageTabBarState();
}

class _WhatsAppPageTabBarState extends State<WhatsAppPageTabBar> {
  Color appBarColor = const Color.fromRGBO(0, 128, 105, 1);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),
          actions: const [
            Icon(Icons.camera_alt_outlined, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 10),
          ],
          bottom: const PreferredSize(
            preferredSize: Size(
              double.infinity,
              50,
            ),
            child: TabBar(
              tabs: [
                Icon(Icons.group),
                Text("Chats"),
                Text("Status"),
                Text("Calls"),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.teal[900],
        body: const TabBarView(
          children: [
            WhatsappGroupPage(),
            ChatPageWhatsapp(),
            WhatsappStatusPage(),
            WhatsappCallsPage(),
          ],
        ),
      ),
    );
  }
}
