import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text("List Tile"),
        subtitle: const Text("Thank you....."),
        trailing: const Text("12:45"),
        // contentPadding: EdgeInsets.all(20),
        tileColor: Colors.green,
        dense: false,
        // horizontalTitleGap: 20,
        // isThreeLine: true,
        // minLeadingWidth: 50,
        minVerticalPadding: 20,
        shape: Border.all(),
        style: ListTileStyle.drawer,
        visualDensity: VisualDensity.compact,
        // textColor: Colors.white,
        // hoverColor: Colors.brown,
        focusColor: Colors.red,
        // iconColor: Colors.white,
        // selected: true,
        // selectedColor: Colors.brown,
        // selectedTileColor: Colors.green,
        // splashColor: Colors.black,
        onTap: () {},
      ),
    );
  }
}
