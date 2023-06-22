import 'package:flutter/material.dart';

class PageViewBuilderDemo extends StatefulWidget {
  const PageViewBuilderDemo({super.key});

  @override
  State<PageViewBuilderDemo> createState() => _PageViewBuilderDemoState();
}

class _PageViewBuilderDemoState extends State<PageViewBuilderDemo> {
  List<Image> image = [
    Image.asset(
      "assets/images/fly.jpg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/paris.jpeg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/fly.jpg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/paris.jpeg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/fly.jpg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/paris.jpeg",
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PageView.builder(
      //   scrollDirection: Axis.vertical,
      //   itemCount: image.length,
      //   itemBuilder: (context, index) => image[index],
      // ),
      body: PageView.custom(
          scrollDirection: Axis.vertical,
          childrenDelegate: SliverChildListDelegate.fixed(
              List.generate(image.length, (index) => image[index]))),
    );
  }
}
