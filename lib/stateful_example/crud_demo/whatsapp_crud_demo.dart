import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/crud_demo/chat_page_crud_demo.dart';
import 'package:my_practtise/stateful_example/crud_demo/crud_updated_page.dart';

class WhatsappCrudDemo extends StatefulWidget {
  const WhatsappCrudDemo({super.key});

  @override
  State<WhatsappCrudDemo> createState() => _WhatsappCrudDemoState();
}

class _WhatsappCrudDemoState extends State<WhatsappCrudDemo> {
  Color appBarColor = const Color.fromRGBO(0, 128, 105, 1);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
            ChatPageCrudDemo(),
            CrudUpdatePage(),
            ChatPageCrudDemo(),
          ],
        ),
      ),
    );
  }
}
