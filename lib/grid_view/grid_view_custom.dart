import 'package:flutter/material.dart';
import 'package:my_practtise/grid_view/grid_data.dart';

class GridViewCustom extends StatelessWidget {
  const GridViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.custom(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 3,
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
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
                childCount: gridData.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
