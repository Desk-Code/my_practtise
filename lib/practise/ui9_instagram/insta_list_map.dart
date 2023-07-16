import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui9_instagram/insta_model_class.dart';
import 'package:my_practtise/practise/ui9_instagram/insta_row_data.dart';

class InstaDemoPage extends StatelessWidget {
  const InstaDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    for (var ele in instaRowData) {
      instaData.add(InstaModel.fromJson(ele));
    }
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white70,
              fontSize: 25,
              fontFamily: "Dancing Script"),
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
                  instaData.length,
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
                                image: DecorationImage(
                                  image: NetworkImage(instaData[index].url!),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          instaData[index].name!,
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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
              instaData.length,
              (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: NetworkImage(
                          instaData[index].url!,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          instaData[index].name!,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Icon(
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
                      image: DecorationImage(
                        image: NetworkImage(instaRowData[index]["url"]),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    // child: Image.network(
                    //   "https://images.unsplash.com/photo-1560008581-09826d1de69e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=744&q=80",
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
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
                      Icon(
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
