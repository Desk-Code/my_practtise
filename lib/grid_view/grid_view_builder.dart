import 'package:flutter/material.dart';
import 'package:my_practtise/grid_view/grid_data.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: gridData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 3,
              ),
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
