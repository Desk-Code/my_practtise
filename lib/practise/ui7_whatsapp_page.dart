import 'package:flutter/material.dart';

class Ui7WhatsAppPage extends StatelessWidget {
  const Ui7WhatsAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget commonListTile({
      required String name,
      required String lastMessage,
      required String date,
      required IconData icon,
    }) =>
        ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(name, style: const TextStyle(color: Colors.white)),
          subtitle:
              Text(lastMessage, style: const TextStyle(color: Colors.white)),
          trailing: Text(date, style: const TextStyle(color: Colors.white)),
        );

    Color appBarColor = const Color.fromRGBO(0, 128, 105, 1);

    return Scaffold(
      appBar: AppBar(
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
              const Expanded(
                  child: Text("Chats",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70))),
              const Expanded(
                  child: Text("Status",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70))),
              const Expanded(
                  child: Text("Call",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70))),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.teal[900],
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
                62,
                (index) => commonListTile(
                    name: "Vanila",
                    lastMessage: "Bye bye ❤️",
                    date: "1 min ago",
                    icon: Icons.account_circle))),
      ),
    );
  }
}
