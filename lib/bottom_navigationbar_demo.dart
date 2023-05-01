import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatelessWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      bottomNavigationBar: Container(
        color: Colors.red,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.menu),
            Icon(Icons.search),
            Icon(Icons.watch),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
