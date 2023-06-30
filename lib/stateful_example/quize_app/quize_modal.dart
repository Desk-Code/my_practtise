// class QuestionRowData {
//   String question;
//   List<> answerlist;

//   QuestionRowData({
//     required this.question,
//     required this.answerlist,
//   });

//   factory QuestionRowData.fromJson(Map<String, dynamic> json) =>
//       QuestionRowData(
//         question: json["question"],
//         // answerlist: List<Answerlist>.from(
//         //     json["answerlist"].map((x) => Answerlist.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "question": question,
//         "answerlist": List<dynamic>.from(answerlist.map((x) => x.toJson())),
//       };
// }

// class Answer {
//   String answer;
//   bool answerValue;

//   Answer({
//     required this.answer,
//     required this.answerValue,
//   });

//   factory Answer.fromJson(Map<String, dynamic> json) => Answer(
//         answer: json["answer"],
//         answerValue: json["answerValue"],
//       );

//   Map<String, dynamic> toJson() => {
//         "answer": answer,
//         "answerValue": answerValue,
//       };
// }
