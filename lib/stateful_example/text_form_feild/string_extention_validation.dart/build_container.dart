import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/text_form_feild/string_extention_validation.dart/build_context_extention.dart';

class ContainerMediaQuery extends StatefulWidget {
  const ContainerMediaQuery({super.key});

  @override
  State<ContainerMediaQuery> createState() => _ContainerMediaQueryState();
}

class _ContainerMediaQueryState extends State<ContainerMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: context.screenHeight * 4 / 10,
          width: context.screenWidth * 8 / 20,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
