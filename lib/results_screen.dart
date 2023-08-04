import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {required this.onRestart, required this.answers, super.key});

  final List<String> answers;
  final void Function() onRestart;

  @override
  Widget build(BuildContext context) {
    const subtitleStyle =
        TextStyle(color: Colors.white, fontStyle: FontStyle.italic);
    var rightAnswers = 0;
    for (int i = 0; i < answers.length; i++) {
      if (answers[i] == questions[i].answers[0]) {
        rightAnswers++;
      }
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você Acertou $rightAnswers de ${answers.length} Questões',
              style:
                  GoogleFonts.redHatDisplay(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: answers.length,
                  itemBuilder: (_, index) {
                    bool isCorrect =
                        answers[index] == questions[index].answers[0];

                    return Card(
                      elevation: 10,
                      color: Colors.purple,
                      child: ListTile(
                        style: ListTileStyle.list,
                        dense: false,
                        leading: CircleAvatar(
                          backgroundColor:
                              isCorrect ? Colors.green : Colors.red[300],
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        trailing: Icon(
                          isCorrect ? Icons.check : Icons.error_outline,
                          color: Colors.white,
                        ),
                        title: Text(
                          questions[index].question,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: isCorrect
                            ? Text(
                                'Você Acertou, \'${answers[index]}\'',
                                style: subtitleStyle,
                              )
                            : Text(
                                "Errado, a resposta certa é \'${questions[index].answers[0]}\'",
                                style: subtitleStyle,
                              ),
                      ),
                    );
                  }),
            ),
            TextButton.icon(
                onPressed: onRestart,
                icon: const Icon(
                  Icons.refresh_rounded,
                  color: Colors.white,
                ),
                label: Text(
                  'Reiniciar',
                  style: GoogleFonts.redHatDisplay(
                      color: Colors.white, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
