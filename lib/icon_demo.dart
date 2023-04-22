import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.access_time_filled_sharp,
          color: Colors.indigoAccent,
          size: 50.0,
          shadows: [
            Shadow(
              color: Colors.blueGrey,
              blurRadius: 20,
              offset: Offset(10, 10),
            ),
          ],
        ),
      ),
    );
  }
}
