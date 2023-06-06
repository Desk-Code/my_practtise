import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/calls_page.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/chat_page.dart';
import 'package:my_practtise/practise/ui7_whatsapp/Screens/status_page.dart';

class WhtasappPage extends StatefulWidget {
  const WhtasappPage({super.key});

  @override
  State<WhtasappPage> createState() => _WhtasappPageState();
}

class _WhtasappPageState extends State<WhtasappPage> {
  int index = 0;
  List screens = [
    const ChatPageWhatsapp(),
    const WhatsappStatusPage(),
    const WhatsappCallsPage()
  ];
  @override
  Widget build(BuildContext context) {
    Color appBarColor = const Color.fromRGBO(0, 128, 105, 1);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text("WhatsApp",
            style: TextStyle(color: Colors.white70, fontSize: 18)),
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: Row(
            children: [
              Container(
                  width: 35,
                  padding: const EdgeInsets.all(7),
                  child: const Icon(Icons.groups, color: Colors.white70)),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  index = 0;
                  setState(() {});
                },
                child: const Text("Chats",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70)),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  index = 1;
                  setState(() {});
                },
                child: const Text("Status",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70)),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  index = 2;
                  setState(() {});
                },
                child: const Text("Call",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70)),
              )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal[900],
      body: screens[index],
    );
  }
}
