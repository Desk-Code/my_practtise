import 'package:flutter/material.dart';

class CircleAvtarDemo extends StatelessWidget {
  const CircleAvtarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          // radius: 100,
          minRadius: 60,
          maxRadius: 80,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1585076641399-5c06d1b3365f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aHRtbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          child: Text("Harsh", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
