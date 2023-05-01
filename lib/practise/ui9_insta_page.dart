import 'package:flutter/material.dart';

class Ui9InstaPage extends StatelessWidget {
  const Ui9InstaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 80),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      const Text(
                        "Your Story",
                        style: TextStyle(
                          color: Colors.white,
                          height: 2,
                        ),
                      )
                    ],
                  ),
                ),
                ...List.generate(
                  15,
                  (index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.yellow.shade600,
                                    Colors.orange.shade400,
                                    Colors.red.shade800,
                                    Colors.purple,
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  stops: const [0.1, 0.3, 0.6, 0.1],
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade900, width: 4),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "data ${index + 1}",
                          style: const TextStyle(
                            color: Colors.white70,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ...List.generate(
              15,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1153&q=80",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Vanila with topics",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Container(
                    height: 500,
                    // width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1560008581-09826d1de69e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=744&q=80"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    // child: Image.network(
                    //   "https://images.unsplash.com/photo-1560008581-09826d1de69e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=744&q=80",
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.message_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.send_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.bookmark_border,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "\t\t2k likes",
                    style: TextStyle(color: Colors.white70),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
