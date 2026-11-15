import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:worldtravelapp/widgets/customText.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf7f7),
      body: Center(
        child: Column(
          children: [
            Gap(150),
            Customtext(text: "Welcome to Home"),
            Image.asset("assets/avatar.jpg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/1f1f5_1f1f8.png"),
                Gap(10),
                Text("حي الله الاحرار",style: TextStyle(color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
              ],
            )

          ],
        ),
      ),
    );
  }
}