import 'package:flutter/material.dart';
import 'package:my_practtise/list_of_map_demo/list_row_data_model.dart';
import 'package:my_practtise/list_of_map_demo/user_model.dart';

class ModelScreenDemo extends StatelessWidget {
  const ModelScreenDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in userDetails) {
      // print(element.runtimeType);
      userData.add(User.fromJson(element));
    }
    return Scaffold(
      body: Column(
          children: List.generate(
              userData.length,
              (index) => ListTile(
                    title: Text(userData[index].userName!),
                    subtitle: Text(userData[index].emailId!),
                  ))),
    );
  }
}
