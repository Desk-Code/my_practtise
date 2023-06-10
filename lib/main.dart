import 'package:flutter/material.dart';
import 'package:my_practtise/grid_view/grid_view_extent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewExtent(),
    );
  }
}
