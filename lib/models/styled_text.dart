import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.fontsize,
    this.fontColor = const Color.fromARGB(255, 238, 205, 255),
  });

  final String text;
  final double fontsize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          fontSize: fontsize,
          color: fontColor,
        ),
        textAlign: TextAlign.left);
  }
}
