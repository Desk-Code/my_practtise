import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/counter_app/counter.controller.dart';

class CounterApp2 extends StatefulWidget {
  const CounterApp2({super.key});

  @override
  State<CounterApp2> createState() => _CounterApp2State();
}

class _CounterApp2State extends State<CounterApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (MyCounter.singleCount == 0)
                    ? null
                    : () {
                        MyCounter.singleDecrement();
                        setState(() {});
                      },
                icon: const Icon(Icons.remove),
              ),
              Text(
                MyCounter.singleCount.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              IconButton(
                onPressed: (MyCounter.singleCount == 50)
                    ? null
                    : () {
                        MyCounter.singleIncrement();
                        setState(() {});
                      },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (MyCounter.doubleCount == 0)
                    ? null
                    : () {
                        MyCounter.doubleDecrement();
                        setState(() {});
                      },
                icon: const Icon(Icons.remove),
              ),
              Text(
                MyCounter.doubleCount.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              IconButton(
                onPressed: (MyCounter.doubleCount == 50)
                    ? null
                    : () {
                        MyCounter.doubleIncrement();
                        setState(() {});
                      },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
