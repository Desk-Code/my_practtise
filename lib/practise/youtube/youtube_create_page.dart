import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class YoutubeCreatePage extends StatelessWidget {
  const YoutubeCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bottomSheet() => AnimatedContainer(
          duration: const Duration(
            seconds: 10,
          ),
          color: Colors.black87,
          curve: Curves.fastOutSlowIn,
          height: 325,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Create",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.bolt),
                ),
                title: Text(
                  "Create a Shorts",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.upload),
                ),
                title: Text(
                  "Upload a video",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.wifi_tethering_outlined),
                ),
                title: Text(
                  "Go live",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.edit_square),
                ),
                title: Text(
                  "Create a post",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );

    List<IconData> icon = [
      Icons.home,
      Icons.home,
      Icons.home,
      Icons.home,
    ];
    int index = 0;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => bottomSheet(),
            );
          },
          child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icon,
        activeIndex: index,
        onTap: (p0) {},
        gapLocation: GapLocation.center,
      ),
    );
  }
}
