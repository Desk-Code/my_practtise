import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Colors.deepPurpleAccent,
          // alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(30, 50, 0, 0),
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          decoration: BoxDecoration(
            // color: Colors.deepPurpleAccent,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
              strokeAlign: 5.0,
              style: BorderStyle.solid,
            ),
            // borderRadius: const BorderRadius.all(
            //   // Radius.circular(30),
            //   Radius.elliptical(20, 30),
            // ),
            // borderRadius:
            //     // const BorderRadius.circular(20),
            //     // const BorderRadius.vertical(bottom: Radius.circular(20)),
            //     const BorderRadius.horizontal(right: Radius.circular(10)),
            image: const DecorationImage(
              image: NetworkImage(
                "https://m.media-amazon.com/images/I/61lfthIflfL._SX522_.jpg",
              ),
              alignment: Alignment.center,
              //  colorFilter: ColorFilter.srgbToLinearGamma(),
              filterQuality: FilterQuality.medium,
              fit: BoxFit.fill,
              // invertColors: true,
              matchTextDirection: false,
              opacity: 0.5,
              scale: 5,
            ),
            gradient: const LinearGradient(
              colors: [Colors.redAccent, Colors.greenAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              stops: [0.7, 0.3],
            ),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                spreadRadius: 10,
                offset: Offset(5, 10),
              ),
              BoxShadow(
                color: Colors.yellowAccent,
                blurRadius: 10.0,
                spreadRadius: 10,
                offset: Offset(10, -10),
              ),
            ],
          ),
          // transform: Matrix4.rotationZ(-50.0),
          // transform: Matrix4.translationValues(50, 0, 0),
          transform: Matrix4.skew(50, -50),
          transformAlignment: Alignment.center,
          // constraints: BoxConstraints.tight(Size.fromWidth(500)),
          child: const Text(
            "Harsh Sangani",
          ),
        ),
      ),
    );
  }
}
