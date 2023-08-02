import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button_widget.dart';

import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.question,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) => AnswerButton(
                answerText: answer,
                buttonTrigger: () {},
              ))
          // SizedBox(
          //   height: 350,
          //   width: 300,
          //   child: ListView.builder(
          //       itemCount: currentQuestion.answers.length,
          //       itemBuilder: (_, index) =>
          //           AnswerButton(answerText: currentQuestion.answers[index])),
          // ),
        ],
      ),
    );
  }
}
