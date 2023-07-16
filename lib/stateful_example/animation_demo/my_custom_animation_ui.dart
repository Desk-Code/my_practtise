import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/animation_demo/my_custom_animation.dart';

class MyCustomAnimationUI extends StatefulWidget {
  const MyCustomAnimationUI({super.key});

  @override
  State<MyCustomAnimationUI> createState() => _MyCustomAnimationUIState();
}

class _MyCustomAnimationUIState extends State<MyCustomAnimationUI>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20))
          ..repeat();
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClockWiseRotation(
              listenable: _animationController!,
            ),
            const SizedBox(
              height: 25,
            ),
            AntiClockWise(
              listenable: _animationController!,
            ),
          ],
        ),
      ),
    );
  }
}
