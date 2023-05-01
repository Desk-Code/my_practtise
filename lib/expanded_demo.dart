import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Row(
    //     children: [
    //       const CircleAvatar(
    //         radius: 25,
    //       ),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisSize: MainAxisSize.min,
    //           children: const [
    //             Text("Harsh"),
    //             Text("Hello.."),
    //           ],
    //         ),
    //       ),
    //       const Text("12:30 pm"),
    //     ],
    //   ),
    // );
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: Container(
              color: Colors.red,
              child: const Icon(Icons.accessible_forward_sharp),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 3,
            child: Container(
              color: Colors.green,
              child: const Icon(Icons.add_home),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
