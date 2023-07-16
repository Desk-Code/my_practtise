import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: true,
        bottomOpacity: 0.55,
        leadingWidth: 50,
        shadowColor: Colors.blue,
        shape: Border.all(
          color: Colors.yellow.shade800,
          width: 1,
        ),
        titleSpacing: 50,
        // titleTextStyle: TextStyle(color: Colors.amber.shade900),
        leading: const Icon(Icons.menu),
        title: const Text("App Bar Demo"),
        actions: const [
          Icon(Icons.camera),
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        // centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Chat"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
        elevation: 20,
      ),
    );
  }
}
