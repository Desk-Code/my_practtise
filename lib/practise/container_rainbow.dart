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
      body: Center(
        child: Container(
          // height: 200,
          // width: 200,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
            gradient: RadialGradient(
              // center: Alignment.bottomLeft,
              // radius: 1.37,
              colors: colors,
              tileMode: TileMode.decal,
              transform: GradientRotation(50),
              // stops: [0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6],
            ),
          ),
        ),
      ),
    );
  }
}
