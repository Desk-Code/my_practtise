import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/quize_app/quize_data.dart';

class QuizRadioPractise extends StatefulWidget {
  const QuizRadioPractise({super.key});

  @override
  State<QuizRadioPractise> createState() => _QuizRadioPractiseState();
}

class _QuizRadioPractiseState extends State<QuizRadioPractise> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(),
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "${currentIndex + 1}.  ${quizData[currentIndex].questionText}",
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ...List.generate(
            4,
            (index) => Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              alignment: Alignment.center,
              child: Text(
                quizData[currentIndex].answerList![index].answerText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
