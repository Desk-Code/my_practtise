import 'package:flutter/material.dart';

class AnimationBuilderDemo extends StatefulWidget {
  const AnimationBuilderDemo({super.key});

  @override
  State<AnimationBuilderDemo> createState() => _AnimationBuilderDemoState();
}

class _AnimationBuilderDemoState extends State<AnimationBuilderDemo>
    with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController!,
          builder: (context, child) {
            return Transform.rotate(
              angle: -_animationController!.value * 100,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
