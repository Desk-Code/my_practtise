import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("App Bar Demo"),
        actions: const [
          Icon(Icons.camera),
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
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
