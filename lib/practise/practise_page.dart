import 'package:flutter/material.dart';

class PractisePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  PractisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      // key: scaffoldKey,
      body: Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // scaffoldKey.currentState!.openEndDrawer();
              // setState(() {});
            },
            icon: const Icon(Icons.search));
      }),
    );
  }
}
