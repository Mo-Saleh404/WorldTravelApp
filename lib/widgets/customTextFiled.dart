import 'package:flutter/material.dart';

class Customtextfiled extends StatelessWidget {
  const Customtextfiled({super.key, required this.hinttext, required this.suffixicon});
  final String hinttext;
  final IconData suffixicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: hinttext,
          hintStyle: TextStyle(color: Color(0xff606060)),
          suffixIcon: suffixicon !=null ? Icon(suffixicon) : null,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
          ),
        ),
      ),
    );
  }
}
