import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const MaterialButton(
            color: Colors.indigo,
            disabledColor: Colors.green,
            disabledTextColor: Colors.white,
            highlightColor: Colors.purple,
            hoverColor: Colors.pink,
            minWidth: 150,
            textColor: Colors.white,
            onPressed: null,
            child: Text("Material Button"),
          ),
          ElevatedButton(
            onPressed: () {
              // print("Hiii, I am Elevated Button");
            },
            // style: ButtonStyle(),
            child: const Text("Elevated Button"),
          ),
          TextButton(
            onPressed: () {
              // print("Hiii, I am Text Button");
            },
            child: const Text("Text Button"),
          ),
          IconButton(
            onPressed: () {
              // print("Hii, I am Icon Button");
            },
            icon: const Icon(Icons.settings_ethernet),
          ),
          OutlinedButton(
            onPressed: () {
              // print("hiii, I am Outlined Button");
            },
            child: const Text("Outlined Button"),
          ),
          // FloatingActionButton(
          //   onPressed: () {
          //     print("Hii, I am Floting Action Button");
          //   },
          //   child: const Icon(Icons.home),
          // ),
          // FloatingActionButton.extended(
          //   onPressed: () {
          //     print("Hii, I am FlotingAction Button");
          //   },
          //   label: const Text("Floting Action button Extended"),
          //   icon: const Icon(Icons.g_translate_rounded),
          // ),
          // FloatingActionButton.small(
          //   onPressed: () {
          //     print("Hiii, I am Floting ction Button");
          //   },
          //   child: const Icon(Icons.home),
          // ),
          // FloatingActionButton.large(
          //   onPressed: () {
          //     print("Hiii, I am Floting Action Button");
          //   },
          //   child: const Icon(Icons.home),
          // ),
          GestureDetector(
            onTap: () {
              // print("Hiiii, I am tapable Container");
            },
            onDoubleTap: () {
              // print("hiiii, I am Double Tap Event");
            },
            onLongPress: () {
              // print("Hiii, I am Long Press Event");
            },
            child: Card(
              elevation: 20,
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  // borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container();
                },
                barrierColor: Colors.yellow,
                isDismissible: true,
                useSafeArea: true,
              );
            },
            child: const Text("Open Bottom Sheet"),
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("SnackBar Data"),
                  action: SnackBarAction(
                    label: "Hello",
                    onPressed: () {},
                  ),
                  showCloseIcon: true,
                  closeIconColor: Colors.amber,
                  dismissDirection: DismissDirection.horizontal,
                  duration: const Duration(seconds: 5),
                ),
              );
            },
            child: const Text("Show Snack Bar"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        // elevation: 50,
        // disabledElevation: 50,
        // focusColor: Colors.green,
        hoverColor: Colors.green,
        isExtended: false,
        mini: false,
// shape: RoundedRectangleBorder(),
        splashColor: Colors.indigo,
        tooltip: "This is a Floting Button",
        onPressed: () {
          // print("hii, I am Floting Action Button ");
        },
        child: const Icon(Icons.add),
      ),
      // floatingActionButtonLocation: ,
      appBar: AppBar(
        leading: const Icon(Icons.abc),
        actions: const [Icon(Icons.abc)],
      ),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
    );
  }
}
