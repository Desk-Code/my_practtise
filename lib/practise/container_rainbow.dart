import 'package:flutter/material.dart';

class ContainerRainbow extends StatelessWidget {
  const ContainerRainbow({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = const [
      Colors.white,
      Color.fromRGBO(107, 71, 150, 1),
      Color.fromRGBO(60, 67, 149, 1),
      Color.fromRGBO(0, 170, 229, 1),
      Color.fromRGBO(101, 179, 61, 1),
      Color.fromRGBO(255, 239, 1, 1),
      Color.fromRGBO(250, 186, 0, 1),
      Color.fromRGBO(232, 79, 54, 1),
    ];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: colors,
            tileMode: TileMode.decal,
          ),
        ),
      ),
    );
  }
}
