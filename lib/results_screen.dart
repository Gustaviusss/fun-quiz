import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.answers, super.key});

  final List<String> answers;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você Acertou X de Y Questões',
              style:
                  GoogleFonts.redHatDisplay(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(height: 30),
            const Text('resultados'),
            TextButton.icon(
                onPressed: () {},
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
