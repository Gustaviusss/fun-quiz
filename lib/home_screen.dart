import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startTrigger, {super.key});

  final void Function() startTrigger;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/quiz-logo.png',
              color: Colors.white.withOpacity(.7),
              // colorBlendMode: BlendMode.modulate,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Aprenda Flutter de um jeito divertido",
              style: GoogleFonts.redHatDisplay(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: OutlinedButton.icon(
              onPressed: startTrigger,
              icon: const Icon(
                Icons.arrow_right_alt,
                color: Colors.white,
              ),
              label: Text(
                'Começar',
                style: GoogleFonts.redHatDisplay(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              style: OutlinedButton.styleFrom(
                  side:
                      const BorderSide(color: Color.fromRGBO(224, 214, 47, 88)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
            ),
          )
        ],
      ),
    );
  }
}
