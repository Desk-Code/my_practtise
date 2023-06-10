import 'package:flutter/material.dart';
import 'package:my_practtise/grid_view/grid_data.dart';

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 3,
              mainAxisSpacing: 5,
              // scrollDirection: Axis.vertical,

              children: [
                ...List.generate(
                  gridData.length,
                  (index) => Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          gridData[index]["icon"],
                          size: 50,
                        ),
                        Text(gridData[index]["name"]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
