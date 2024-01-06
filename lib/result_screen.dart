import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.onReset});

  final void Function() onReset;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y question correctly!'),
            const SizedBox(height: 30),
            const Text('String List what you answer correctly...'),
            TextButton.icon(
              onPressed: onReset,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restore_rounded),
              label: Text(
                'Restart Quiz!',
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
