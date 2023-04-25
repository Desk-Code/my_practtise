import 'package:flutter/material.dart';

class NeumophismPage extends StatelessWidget {
  const NeumophismPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0xFFE7ECEF);
    Offset distance = const Offset(28, 28);
    double blur = 30.0;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: blur,
                offset: -distance,
                color: Colors.white,
              ),
              BoxShadow(
                blurRadius: blur,
                offset: distance,
                color: const Color(0xFFA7A9AF),
              ),
            ],
          ),
          child: const SizedBox(
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
