import 'package:flutter/material.dart';

class Ui3 extends StatelessWidget {
  const Ui3({super.key});
  @override
  Widget build(BuildContext context) {
    double height = 784 / 6, width = 500;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: height / 2,
                    width: width * 1.5 / 10,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 2,
                    width: width * 1.5 / 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(),
                    ),
                  ),
                ],
              ),
              Container(
                height: height,
                width: width * 3.5 / 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 5 / 10,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: height,
                width: width * 2.5 / 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 2.5 / 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 1.25 / 10,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: height / 4,
                    width: width * 2.5 / 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 4,
                        width: (width * 2.5 / 10) / 4,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: (width * 2.5 / 10) / 4,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: (width * 2.5 / 10) / 4,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: (width * 2.5 / 10) / 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: height / 4,
                    width: width * 2.5 / 10,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 4,
                    width: width * 2.5 / 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(),
                    ),
                  ),
                ],
              ),
              Container(
                height: height,
                width: width * 1.25 / 10,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: (height / 2) / 3,
                            width: width * 2 / 10,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(),
                            ),
                          ),
                          Container(
                            height: (height / 2) / 3,
                            width: width * 2 / 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(),
                            ),
                          ),
                          Container(
                            height: (height / 2) / 3,
                            width: width * 2 / 10,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: height / 2,
                        width: width * 1.2 / 10,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 2,
                        width: width * 1.2 / 10,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 2,
                        width: width * 0.6 / 10,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 2,
                        width: width * 0.8 / 10,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 2,
                        width: width * 1.4 / 10,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 2,
                        width: width * 1.4 / 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 2,
                        width: width * 1.4 / 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: height,
                width: width * 2.5 / 10,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 2.5 / 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: height,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 3 / 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 3 / 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: height / 2,
                    width: width * 1 / 10,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 2,
                    width: width * 1 / 10,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: height / 2,
                    width: width * 1 / 10,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 2,
                    width: width * 1 / 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: height * 1 / 5,
                    width: width * 6 / 10,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      border: Border.all(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 4 / 5,
                        width: width * 3 / 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: height * 2 / 5,
                            width: width * 3 / 10,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: height * 2 / 5,
                                width: width * 1.5 / 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 2 / 5,
                                width: width * 1.5 / 10,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  border: Border.all(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: height,
                width: width * 2 / 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: height,
                width: width * 2 / 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: height / 4,
                    width: width * 3 / 10,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 4,
                    width: width * 3 / 10,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.purple[300],
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.purple[300],
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height / 4,
                        width: width * 1.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: height / 4,
                    width: width * 3 / 10,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(),
                    ),
                  ),
                  Container(
                    height: height / 4,
                    width: width * 3 / 10,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(),
                    ),
                  ),
                ],
              ),
              Container(
                height: height,
                width: width * 2 / 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
