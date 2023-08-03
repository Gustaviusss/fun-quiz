import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.buttonTrigger});

  final String answerText;
  final void Function() buttonTrigger;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            elevation: 3,
            backgroundColor: const Color.fromRGBO(148, 139, 1, 58),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onPressed: buttonTrigger,
          child: Text(
            answerText,
            textAlign: TextAlign.center,
          )),
    );
  }
}
