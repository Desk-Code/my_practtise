import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/counter_app/counter.controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Text(
          MyCounter.singleCount.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          MyCounter.singleIncrement();
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
