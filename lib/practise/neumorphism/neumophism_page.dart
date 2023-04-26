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
            color: Colors.transparent,
            boxShadow: [
              // BoxShadow(
              //   blurRadius: blur,
              //   offset: -distance,
              //   color: Colors.white,
              // ),
              // BoxShadow(
              //   blurRadius: blur,
              //   offset: distance,
              //   color: const Color(0xFFA7A9AF),
              // ),
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  -2,
                  -2,
                ),
                blurRadius: 1,
              ),
              BoxShadow(
                color: backgroundColor,
                blurRadius: 5,
                spreadRadius: -5,
                offset: Offset(-200, -200),
              ),

              BoxShadow(
                color: backgroundColor,
                blurRadius: 8,
                spreadRadius: -5,
                offset: Offset(-1, -1),
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
