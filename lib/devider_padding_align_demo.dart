import 'package:flutter/material.dart';

class DivPaddAlignDemo extends StatelessWidget {
  const DivPaddAlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     color: Colors.red,
      //   ),
      // ),

      body: Align(
        alignment: Alignment.center,
        heightFactor: 8,
        widthFactor: 5,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       const Text("Demo"),
      //       Divider(
      //         indent: 50,
      //         endIndent: 50,
      //         thickness: 2,
      //         color: Colors.grey[900],
      //         height: 50,
      //       ),
      //       const Text("Data"),
      //     ],
      //   ),
      // ),

      // body: Center(
      //   child: IntrinsicHeight(
      //     child: Row(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         const Text("Demo"),
      //         VerticalDivider(
      //           // indent: 50,
      //           // endIndent: 50,
      //           thickness: 2,
      //           color: Colors.grey[900],
      //           width: 50,
      //         ),
      //         const Text("Data"),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
