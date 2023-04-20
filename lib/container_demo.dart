import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        // color: Colors.deepPurpleAccent,
        // alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(30, 50, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
        decoration: BoxDecoration(
          // color: Colors.deepPurpleAccent,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
            strokeAlign: 5.0,
            style: BorderStyle.solid,
          ),
          // borderRadius: const BorderRadius.all(
          //   // Radius.circular(30),
          //   Radius.elliptical(20, 30),
          // ),
          borderRadius:
              // const BorderRadius.circular(20),
              // const BorderRadius.vertical(bottom: Radius.circular(20)),
              const BorderRadius.horizontal(right: Radius.circular(10)),
          // image: const DecorationImage(
          //   image: NetworkImage(
          //       "https://m.media-amazon.com/images/I/61lfthIflfL._SX522_.jpg"),
          // ),
          gradient: const LinearGradient(
            colors: [Colors.redAccent, Colors.greenAccent],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [0.7, 0.3],
          ),
        ),

        child: const Text(
          "Harsh Sangani",
        ),
      ),
    );
  }
}
