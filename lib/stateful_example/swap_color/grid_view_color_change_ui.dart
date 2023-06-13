import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/swap_color/color_change_method.dart';

class GridViewColorChangeUi extends StatefulWidget {
  const GridViewColorChangeUi({super.key});

  @override
  State<GridViewColorChangeUi> createState() => _GridViewColorChangeUiState();
}

class _GridViewColorChangeUiState extends State<GridViewColorChangeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: boxColor.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 3),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            ColorMagic.colorChange(index);
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              color: boxColor[index],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
