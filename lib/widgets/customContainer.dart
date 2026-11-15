import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer( {super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 244,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.fredoka(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
