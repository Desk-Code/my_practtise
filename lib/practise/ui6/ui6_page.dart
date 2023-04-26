import 'package:flutter/material.dart';

class Ui6Page extends StatelessWidget {
  const Ui6Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(-1, 1),
                  end: const Alignment(1, 1),
                  colors: [
                    // Color(0xFFE6E6E6),
                    Colors.grey.shade300,
                    const Color(0xFFFFFFFF),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffcccccc),
                      blurRadius: 40,
                      offset: Offset(20, 20)),
                  BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 40,
                      offset: Offset(-20, -20))
                ]),
            child: Center(
              child: Icon(
                Icons.tag_faces_outlined,
                size: 175,
                color: Colors.grey[400],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 30,
                width: 20,
              ),
              Text(
                "First Name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.grey.shade300,
              //     const Color(0xFFFFFFFF),
              //   ],
              //   center: Alignment.centerLeft,
              //   radius: 5,
              // ),
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [
              //     // Color(0xFFE6E6E6),
              //     Colors.grey.shade300,
              //     const Color(0xFFFFFFFF),
              //   ],
              //   stops: [0.01, 0.3],
              // ),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffcccccc),
                    // blurRadius: 10,
                    // spreadRadius: 1,
                    offset: Offset(-5, -10)),
                BoxShadow(
                  color: Color(0xffffffff),
                  blurRadius: 10,
                  // offset: Offset(-5, -1),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                height: 30,
                width: 20,
              ),
              Text(
                "Last Name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(color: Color(0xffcccccc), offset: Offset(-5, -10)),
                BoxShadow(
                  color: Color(0xffffffff),
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              SizedBox(
                height: 30,
                width: 20,
              ),
              Text(
                "Age",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: 50,
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffcccccc),
                      offset: Offset(2, 2),
                      spreadRadius: 1.0,
                      blurRadius: 1.5,
                    ),
                    BoxShadow(
                      color: Color(0xffffffff),
                      offset: Offset(-2, -2),
                      spreadRadius: 1.0,
                      blurRadius: 0.5,
                    )
                  ],
                ),
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey[300],
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(1, 1),
                        // spreadRadius: 2,
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(-1, -1),
                        // spreadRadius: 2,
                        blurRadius: 0.6,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Text(
                "12",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                height: 50,
                width: 20,
              ),
              Text(
                "Gender",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 1),
                      end: const Alignment(1, 1),
                      colors: [
                        // Color(0xFFE6E6E6),
                        Colors.grey.shade300,
                        const Color(0xFFFFFFFF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(-2, -2),
                        spreadRadius: 1.0,
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(2, 2),
                        spreadRadius: 1.0,
                        blurRadius: 0.5,
                      ),
                    ]),
                child: Center(
                  child: Icon(
                    Icons.person_pin_rounded,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 1),
                      end: const Alignment(1, 1),
                      colors: [
                        // Color(0xFFE6E6E6),
                        Colors.grey.shade300,
                        const Color(0xFFFFFFFF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xffcccccc),
                          blurRadius: 40,
                          offset: Offset(20, 20)),
                      BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 40,
                          offset: Offset(-20, -20))
                    ]),
                child: Center(
                  child: Icon(
                    Icons.person_pin_circle_outlined,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: const Alignment(-1, 1),
                      end: const Alignment(1, 1),
                      colors: [
                        // Color(0xFFE6E6E6),
                        Colors.grey.shade300,
                        const Color(0xFFFFFFFF),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffcccccc),
                        offset: Offset(-2, -2),
                        spreadRadius: 1.0,
                        blurRadius: 1.5,
                      ),
                      BoxShadow(
                        color: Color(0xffffffff),
                        offset: Offset(2, 2),
                        spreadRadius: 1.0,
                        blurRadius: 0.5,
                      ),
                    ]),
                child: Center(
                  child: Icon(
                    Icons.group_rounded,
                    size: 35,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
