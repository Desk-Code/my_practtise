import 'package:flutter/material.dart';

class NeumorphismPage extends StatelessWidget {
  const NeumorphismPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: const Offset(-5, -5),
                spreadRadius: 1.0,
                blurRadius: 15.0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(5, 5),
                spreadRadius: 1.0,
                blurRadius: 15.0,
              ),
            ],
          ),
          child: const Icon(Icons.android, size: 80),
        ),
      ),
    );
  }
}
