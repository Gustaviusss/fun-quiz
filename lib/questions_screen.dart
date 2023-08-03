import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button_widget.dart';

import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
    print(currentQuestionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion
                .getShuffledAnswers()
                .map((answer) => AnswerButton(
                      answerText: answer,
                      buttonTrigger: answerQuestion,
                    )),
          ],
        ),
      ),
    );
  }
}
