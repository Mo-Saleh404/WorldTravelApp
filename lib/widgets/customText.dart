import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customtext extends StatelessWidget {
  const Customtext({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nerkoOne(
        textStyle: TextStyle(
          color: Color(0xff000000),
          fontSize: 40,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
