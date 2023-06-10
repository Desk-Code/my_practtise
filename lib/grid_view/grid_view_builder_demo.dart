import 'package:flutter/material.dart';
import 'package:my_practtise/grid_view/grid_data.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5,
                // childAspectRatio: 0.7,
              ),
              itemCount: gridData.length,
              itemBuilder: (context, index) => Container(
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
          ),
        ],
      ),
    );
  }
}
