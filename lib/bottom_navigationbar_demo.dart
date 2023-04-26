import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatelessWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: SizedBox(
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
