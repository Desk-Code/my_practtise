import 'package:flutter/material.dart';

class Ui4Page extends StatelessWidget {
  const Ui4Page({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 784, width = 500;
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(
                height: height * 4 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 3.5 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 2.5 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: height * 6 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 4 / 10,
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
                height: height * 2.5 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 5 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 2.5 / 10,
                width: width * 1 / 10,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(),
                ),
              ),
              Container(
                height: height * 1 / 10,
                width: width * 7 / 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.5 / 10,
                        width: width * 3.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 0.5 / 10,
                        width: width * 3.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 0.5 / 10,
                        width: width * 3.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 2.5 / 10,
                        width: width * 3.5 / 10,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 1 / 10,
                        width: width * 1.75 / 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: height * 0.5 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 0.25 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 0.25 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 2 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  border: Border.all(),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: height * 0.5 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 0.25 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 0.25 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(),
                                ),
                              ),
                              Container(
                                height: height * 2 / 10,
                                width: (width * 1.75 / 10) / 2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: height * 0.4 / 10,
                        width: width * 1.75 / 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 0.2 / 10,
                        width: width * 1.75 / 10,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 0.4 / 10,
                        width: width * 1.75 / 10,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: height * 1 / 10,
                        width: width * 1.75 / 10,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: height * 2 / 10,
                            width: (width * 1.75 / 10) / 2,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(),
                            ),
                          ),
                          Container(
                            height: height * 2 / 10,
                            width: (width * 1.75 / 10) / 2,
                            decoration: BoxDecoration(
                              color: Colors.teal,
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
        ],
      ),
    );
  }
}
