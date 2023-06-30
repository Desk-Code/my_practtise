class Question {
  String? questionText;
  List<Answer>? answerList;
  Question({this.questionText, this.answerList});
}

class Answer {
  String? answerText;
  bool? isCorrect;
  Answer({this.answerText, this.isCorrect});
}

List<Question> quizData = [
  Question(
    questionText: "2 + 2 = ___",
    answerList: [
      Answer(answerText: "4", isCorrect: true),
      Answer(answerText: "6", isCorrect: false),
      Answer(answerText: "8", isCorrect: false),
      Answer(answerText: "2", isCorrect: false),
    ],
  ),
  Question(
    questionText: "2 + 2 * 2 = ___",
    answerList: [
      Answer(answerText: "4", isCorrect: false),
      Answer(answerText: "6", isCorrect: true),
      Answer(answerText: "8", isCorrect: false),
      Answer(answerText: "2", isCorrect: false),
    ],
  ),
  Question(
    questionText: "8 / 2 = ___",
    answerList: [
      Answer(answerText: "4", isCorrect: true),
      Answer(answerText: "6", isCorrect: false),
      Answer(answerText: "8", isCorrect: false),
      Answer(answerText: "2", isCorrect: false),
    ],
  ),
  Question(
    questionText: "2 - 2 + 2 * 2 / 2 = ___",
    answerList: [
      Answer(answerText: "4", isCorrect: false),
      Answer(answerText: "6", isCorrect: false),
      Answer(answerText: "8", isCorrect: false),
      Answer(answerText: "2", isCorrect: true),
    ],
  ),
];
