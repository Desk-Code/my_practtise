import 'package:flutter/material.dart';
import 'package:my_practtise/data_passing_example/user_model.dart';

class DataPassing2 extends StatefulWidget {
  // final Map<String, dynamic> data;
  final User data;

  const DataPassing2({super.key, required this.data});

  @override
  State<DataPassing2> createState() => _DataPassing2State();
}

class _DataPassing2State extends State<DataPassing2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.data.toString()),
          Text(widget.data.firstName.toString()),
          Text(widget.data.middleName.toString()),
          Text(widget.data.lastName.toString()),
        ],
      ),
    );
  }
}
